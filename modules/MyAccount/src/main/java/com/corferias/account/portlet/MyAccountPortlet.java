package com.corferias.account.portlet;

import com.corferias.account.constants.MyAccountPortletKeys;
import com.liferay.expando.kernel.model.ExpandoValue;
import com.liferay.expando.kernel.service.ExpandoValueLocalServiceUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;
import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.portal.kernel.util.WebKeys;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;
import org.apache.log4j.Logger;

/**
 * @author LENOVO
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		"com.liferay.portlet.single-page-application=false",
		"javax.portlet.display-name=MyAccount",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name="+MyAccountPortletKeys.MYACCOUNT,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class MyAccountPortlet extends MVCPortlet {
	
	private static final Logger LOG = Logger.getLogger(MyAccountPortlet.class);
	
	@Override
	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {
		
		ThemeDisplay themeDisplay =(ThemeDisplay)renderRequest.getAttribute(WebKeys.THEME_DISPLAY);
		long userId = themeDisplay.getUserId();
		
		LOG.info(userId);
		
		try {
			User user = UserLocalServiceUtil.getUserById(userId);
			String fullname = user.getFirstName()+" "+user.getMiddleName()+" "+user.getLastName();
			renderRequest.setAttribute("name", fullname);
			renderRequest.setAttribute("email", user.getEmailAddress());
			
			long tableId = 40112;
			long columnId = 49808;
			
			ExpandoValue expando = ExpandoValueLocalServiceUtil.getValue(tableId, columnId, userId);
			
			if(expando != null) {
				renderRequest.setAttribute("telephone", expando.getData());
			}
			else {
				renderRequest.setAttribute("telephone", "");
			}
			LOG.info("Name: "+fullname);
			//LOG.info("Telephone: "+expando.getData());
			LOG.info("Email: "+user.getEmailAddress());
			
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		

		super.doView(renderRequest, renderResponse);
	}
	
	public void savePersonalData(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException {
		
		LOG.info("Ingresa a action savePersonalData ");
		
		ThemeDisplay themeDisplay =(ThemeDisplay)actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
		long userId = themeDisplay.getUserId();
		long company = themeDisplay.getCompanyId();
		try {
			User user = UserLocalServiceUtil.getUserById(userId);
			String fullnameDB = user.getFirstName()+" "+user.getMiddleName()+" "+user.getLastName();
			
			long tableId = 40112;
			long columnId = 49808;
			
			ExpandoValue expando = ExpandoValueLocalServiceUtil.getValue(tableId, columnId, userId);
			
			boolean flag = false;
			
			String fullname = ParamUtil.getString(actionRequest, "fullname");
			
			if(!fullname.trim().equalsIgnoreCase(fullnameDB) && !fullname.trim().equalsIgnoreCase("")) {
				flag = true;
				fullname = fullname.trim();
				
				String[] fullnameList = fullname.split(" ");
				if(fullnameList.length==1) {
					user.setFirstName(fullnameList[0]);	
					user.setMiddleName("");
					user.setLastName("");
				}
				
				if(fullnameList.length==2) {
					user.setFirstName(fullnameList[0]);
					user.setMiddleName(fullnameList[1]);
					user.setLastName("");
				}
				
				if(fullnameList.length>2) {
					user.setFirstName(fullnameList[0]);
					user.setMiddleName(fullnameList[1]);
					String lastname = "";
					for(int i = 2; i<fullnameList.length; i++) {
						lastname = lastname+" "+fullnameList[i];
					}
					lastname = lastname.trim();
					user.setLastName(lastname);
				}
							
			}			
			
			String mail = ParamUtil.getString(actionRequest, "mail");
			LOG.info("correo nuevo: "+mail);
			String mailDB = user.getEmailAddress();
			LOG.info("correo de la base de datos: "+mailDB);
			
			if(!mail.trim().equalsIgnoreCase(mailDB) && !mail.trim().equalsIgnoreCase("")) {
				flag = true;
				if(checkIfMailExits(company, mail)) {
					user.setEmailAddress(mail);
				}
				else {
					SessionErrors.add(actionRequest, "errormail");
					SessionMessages.add(actionRequest, PortalUtil.getPortletId(actionRequest) + SessionMessages.KEY_SUFFIX_HIDE_DEFAULT_ERROR_MESSAGE);
					flag = false;
				}
			}

			if(flag) {
				UserLocalServiceUtil.updateUser(user);
			}
			
			String phone = ParamUtil.getString(actionRequest, "phone");
			String phoneDB = "";
			if(expando.getData() != null) {
				phoneDB = expando.getData();
			}
			
			if(!phone.trim().equalsIgnoreCase(phoneDB) && !phone.trim().equalsIgnoreCase("")) {
				expando.setData(phone);
				ExpandoValueLocalServiceUtil.updateExpandoValue(expando);
			}			
			
			LOG.info("fullname: "+fullname);			
			LOG.info("phone: "+phone);
			LOG.info("mail: "+mail);
			
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void changepasword(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException {
		
		LOG.info("Ingresa a action changepasword ");
		
		String passwd = ParamUtil.getString(actionRequest, "password");
		String newpasswd = ParamUtil.getString(actionRequest, "newpassword");
		String confirnewpasswd = ParamUtil.getString(actionRequest, "confirnewpassword");
		
		ThemeDisplay themeDisplay =(ThemeDisplay)actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
		long userId = themeDisplay.getUserId();
		long company = themeDisplay.getCompanyId();

		try {
		int valor = UserLocalServiceUtil.authenticateByUserId(company, userId, passwd, null, null, null);
		LOG.info("valor: "+valor);
			if(valor>0) {
				if(newpasswd.equals(confirnewpasswd)) {
					UserLocalServiceUtil.updatePassword(userId, newpasswd, confirnewpasswd, false, true);			
				}
			}
			else {
				LOG.info("!Clave actual errada");
			}
		}
		catch (PortalException e) {
			LOG.info("Error: "+e);
		}
	}
	
	boolean checkIfMailExits(long company, String mail){
		
		try {
			User user2 = UserLocalServiceUtil.getUserByEmailAddress(company, mail);
			if(user2 != null) {
				return false;
			}
		}
		catch (com.liferay.portal.kernel.exception.NoSuchUserException e ) {
			return true;
		}
		catch (PortalException e) {
			return false;
		}
		return false;
	}

}