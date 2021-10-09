package checkout.back;

import com.liferay.portal.kernel.service.AddressLocalServiceWrapper;

import com.liferay.portal.kernel.service.ServiceWrapper;

import org.osgi.service.component.annotations.Component;

/**
 * @author Rentadvisor
 */
@Component(
	immediate = true,
	property = {
	},
	service = ServiceWrapper.class
)
public class CheckoutBack extends AddressLocalServiceWrapper {

	public CheckoutBack() {
		super(null);
	}

}