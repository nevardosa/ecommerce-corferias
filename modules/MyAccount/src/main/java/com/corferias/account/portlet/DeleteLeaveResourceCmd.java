package com.corferias.account.portlet;

import com.corferias.account.constants.MyAccountPortletKeys;
import com.liferay.portal.kernel.portlet.bridges.mvc.BaseMVCResourceCommand;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCResourceCommand;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;

import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.osgi.service.component.annotations.Component;


@Component(
		 property = {
		 "javax.portlet.name="+MyAccountPortletKeys.MYACCOUNT,
		 "mvc.command.name=delete_leave_res"
		 },
		 service = MVCResourceCommand.class)

public class DeleteLeaveResourceCmd extends BaseMVCResourceCommand {

	private static final Logger LOG = Logger.getLogger(DeleteLeaveResourceCmd.class);
	
		@Override
		protected void doServeResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
				throws Exception {
			
			String accion = ParamUtil.getString(resourceRequest, "accion");
			
			LOG.info("El valor de accion es: "+accion);
			
			LOG.info("HELLO in delete leave Resource cmd!");
			 System.out.println("in delete leave Resource cmd ");
			
			 resourceRequest.getPortletSession().setAttribute("nombre","Carlos Hernan Lopez");
			 HttpServletRequest httpServletRequest = PortalUtil.getHttpServletRequest(resourceRequest);
			 httpServletRequest.getSession().setAttribute("nombre", "Carlos Hernan Lopez");
			 
		}

}