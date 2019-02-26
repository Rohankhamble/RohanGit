/*
 * LoadRunner Java script. (Build: 946)
 * 
 * Script Description: 
 *                     
 */

import com.amdocs.cih.common.core.EntityIDBase;
import com.amdocs.cih.services.customerbillingprofile.lib.CustomerBillingProfileID;
import com.amdocs.cih.services.contact.lib.CreateContactIDStruct;
import com.amdocs.cih.services.contactrole.lib.CreateContactRoleIDStruct;
import com.amdocs.cih.services.customerprofile.lib.CreateCustomerProfileIDStruct;
import com.amdocs.cih.common.datatypes.rvt.ContactRoleName;
//import com.amdocs.cih.services.customerprofile.lib.CreateCustomerProfileIDStruct.CustomerProfileID;
import java.net.InetAddress;
import java.rmi.RemoteException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.Random;
import com.amdocs.datatypes.DataType;
import java.io.Serializable;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;
import javax.ejb.EJBObject;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import amdocs.core.util.VoUtil;
import javax.rmi.PortableRemoteObject;

import com.amdocs.aif.consumer.OperationInputs;

import com.amdocs.cih.billing.common.lib.BusinessEntityID;
import com.amdocs.cih.common.core.ActivityInfo;
import com.amdocs.cih.common.core.sn.ApplicationContext;
import com.amdocs.cih.common.datatypes.rvt.Language;
import com.amdocs.cih.common.datatypes.rvt.PersonIdentDocumentationType;
import com.amdocs.cih.common.datatypes.rvt.EAddressType;
import com.amdocs.cih.common.datatypes.rvt.PersonGender;
import com.amdocs.cih.common.datatypes.rvt.PersonMaritalStatus;
import com.amdocs.cih.exception.*;
import com.amdocs.cih.services.address.lib.Address;
import com.amdocs.cih.services.address.lib.EAddressDetails;
import com.amdocs.cih.services.contact.lib.ContactDetails;
import com.amdocs.cih.services.contact.lib.CreateContact;
import com.amdocs.cih.services.contact.lib.ContactRef;
import com.amdocs.cih.services.contact.lib.ContactID;
import com.amdocs.cih.services.contactrole.lib.ContactRoleDetails;
import com.amdocs.cih.services.contactrole.lib.CreateContactRole;
import com.amdocs.cih.services.contactrole.lib.CreateContactRole;
import com.amdocs.cih.services.customeraccount.lib.BillingArrangementCreationInfo;
import com.amdocs.cih.services.customeraccount.lib.CreateFinancialInfo;
import com.amdocs.cih.services.customeraccount.lib.CustomerAccountCreationInfo;
import com.amdocs.cih.services.customeraccount.lib.CustomerAccountGeneralInfo;
import com.amdocs.cih.services.customerbillingprofile.interfaces.*;
import com.amdocs.cih.services.customerbillingprofile.lib.*;
import com.amdocs.cih.services.customerprofile.lib.CreateCustomerProfile;
import com.amdocs.cih.services.customerprofile.lib.CustomerProfileDetails;
import com.amdocs.cih.services.customeraccount.lib.CustomerAccountID;
import com.amdocs.cih.services.party.lib.CreateOrganization;
import com.amdocs.cih.services.party.lib.OrganizationDetails;
import com.amdocs.cih.services.party.lib.Person;
import com.amdocs.cih.services.party.lib.*;
import com.amdocs.cih.services.party.lib.PersonIdentificationDetails;
import com.amdocs.cih.services.party.lib.PersonRef;
import com.amdocs.cih.services.party.lib.PersonDetails;
import com.amdocs.cih.services.paymeans.lib.CreatePayMeans;
import com.amdocs.datatypes.DataType;
import com.amdocs.cih.common.datatypes.rvt.AddressFormat;
import com.amdocs.cih.common.datatypes.rvt.Country;
import com.amdocs.cih.common.datatypes.rvt.PersonGender;
import com.amdocs.cih.common.datatypes.rvt.PersonSalutation;
import com.amdocs.cih.common.datatypes.rvt.StateProv;
import com.amdocs.cih.services.address.lib.Address;
import com.amdocs.cih.services.address.lib.PhysicalAddressDetails;
import java.net.InetAddress;
import amdocs.core.mapping.Mappable;
import amdocs.uams.UamsPasswordCredential;
import amdocs.uams.UamsSystem;
import amdocs.uams.auth.UamsAuthenticationService;
import amdocs.uams.login.UamsLoginContext;
import amdocs.uams.login.direct.DirectLoginService;
import amdocs.uams.login.direct.UamsDirectLoginContext;
import com.amdocs.cih.services.customeraccount.lib.BillingArrangementID;
import com.amdocs.cih.services.subscription.lib.SubscriptionID;
import com.amdocs.cih.services.customerprofile.lib.CreateCustomerProfileIDStruct;
import com.amdocs.cih.services.contact.lib.CreateContactIDStruct;
import com.amdocs.cih.services.contactrole.lib.CreateContactRoleIDStruct;
import com.amdocs.cih.services.customerbillingprofile.lib.CustomerBillingProfileID;
import com.amdocs.cih.services.contact.interfaces.IContactServiceRemote;
import com.amdocs.cih.services.contact.interfaces.IContactServiceRemoteHome;
import amdocs.uamsx.login.ejb.basic.UamsEjbBasicLogin;
import amdocs.uamsx.login.ejb.basic.UamsEjbBasicLoginHome;

import lrapi.lr;


public class Actions

{

   // private CreateCustomerBillingProfileInput ip1;
	//private CreateFinancialInfo ip2;
	//private CreateSubscriptionInfo ip3;
	//private CreateCustomerProfile ip4;
	//private ActivityInfo ip5;
	private ApplicationContext context;

	private CreateContact createContact;

// Context ctx = null;
 java.util.Date birthDate = new java.util.Date(87,3,5,19,35,22);//01/12/2007 22:22:22
 java.util.Date date1 = new java.util.Date(113,3,5,19,35,22);//01/12/2007 22:22:22

//##################################################################################################
//##################                     INIT                     ##################################
//##################################################################################################

   	long v_pin;
	long v_accountId;

//	Context context = null;
	//Hashtable ht = new Hashtable();
//	String ticket = null;
	private static final String WL_MACHINE_PORT = "illnqw2226:20004";
  	private static final String WL_MACHINE_PORT_EJB = "illnqw2226:20004";
	private static final String URL = "t3://illnqw2226:20004";
	private static final String user = "Asmsa1";
	private static final String appId = "CRM";

	private static final char[] password = new char[] { 'A', 's', 'm', 's', 'a', '1'};
	
	Hashtable env = new Hashtable(2);
	InitialContext ctx, initCtx = null;
	Object obj;
       
        
	 private InitialContext getInitialContext(String user, char[] password, String appId, String WL_MACHINE_PORT)
	{
		
		env.put(Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory");
		env.put(Context.PROVIDER_URL, URL);
		
		
		lr.start_transaction("Login");

		try
		{
			ctx = new InitialContext(env);

			Object obj = ctx.lookup(UamsEjbBasicLoginHome.JNDI_NAME);
			
			//Object obj1 = ctx.lookup(UamsEjbBasicLoginHome.JNDI_NAME);
			UamsEjbBasicLoginHome home = (UamsEjbBasicLoginHome) PortableRemoteObject.narrow(obj, UamsEjbBasicLoginHome.class);

			UamsEjbBasicLogin remote = (UamsEjbBasicLogin) PortableRemoteObject.narrow(home.create(), UamsEjbBasicLogin.class);

			System.out.println("Input user name=" + user);
			System.out.println("Input password=" + String.valueOf(password));

			String ticket = remote.login(user, password, appId);
			System.out.println("Output uams ticket=" + ticket);
			System.out.println("Input appId=" + appId);
			
		
			Hashtable ht = new Hashtable();

			ht.put(Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory");
			ht.put(Context.PROVIDER_URL, "t3://" + WL_MACHINE_PORT_EJB);
			ht.put(Context.SECURITY_CREDENTIALS, "");
			ht.put(Context.SECURITY_PRINCIPAL, ticket);
			initCtx = new InitialContext(ht);

		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
					
		lr.end_transaction("Login",lr.AUTO);
		return initCtx;
		
	}


	public int init() throws Throwable {

	    
     InitialContext initCtx = getInitialContext(user, password, appId, WL_MACHINE_PORT);
     

	    return 0;
	}

	
    private String CUSTOMER_NAME="PERFTestPrepaidCust1";

    public int action() throws Throwable {

       

	try
	{

            callEjb(ctx);       

	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	return 0;

    }
   


        
	     //SubscriberServices_l9UpdateParam(ctx, lr.eval_string(""+lr.eval_string("<p_subsriberId>")+""), lr.eval_string(""+lr.eval_string("<param_name>")+""),lr.eval_string("<param_value>"));
       
	    //m_ctx = getInitialContext_PROD("10.30.134.171", "18011", "xlt1", "Unix11", "LE_xlt1_PE", "CM"); // petapp2_rplwrk1

		

	private CreateContact createContact()
	{

		CreateContact createContact=new CreateContact();
		ContactDetails lContactDetails=new ContactDetails();
		lContactDetails.setPrimaryForPerson(true);
		ContactRoleName icontactRoleName = new ContactRoleName("Chooser");
		lContactDetails.setRoleName(icontactRoleName);
		createContact.setContactDetails(lContactDetails);
		Address[] addressList=new Address[1];
		Address addr1=new Address();
		PhysicalAddressDetails phad=new PhysicalAddressDetails();
		System.out.println("Is Primary = " + lContactDetails.getPrimaryForPerson());
		System.out.println("Role = " + lContactDetails.getRoleName().getValueAsString());
		
		phad.setFormattedAddress1("test2");
		phad.setCity("Manila");
		phad.setCountry(new Country("PHL"));
		phad.setPostcode("1001");
		phad.setAddressFormat(new AddressFormat("PO"));
		phad.setState(new StateProv("Metro Manila"));

		phad.setRoom("998");
		phad.setFormattedAddress3("Test Building");
		phad.setFormattedAddress2("test2");
		phad.setFormattedAddress4("test2");

		addr1.setPhysicalAddressDetails(phad);

		addressList[0]=addr1;
		createContact.setAddressList(addressList);

		// -------FOR DB TEST --------------
		PersonDetails personDetails=new PersonDetails();
		String personName="TestPrepaidAPI2";
		personDetails.setGivenName(personName);

		personDetails.setFamilyName(personName);
		personDetails.setMiddleName(personName);
		personDetails.setMothersMaidenNameX2(personName);
		PersonGender pg=new PersonGender("M");
		personDetails.setGender(pg);
		PersonSalutation sal=new PersonSalutation("Mr.");
		personDetails.setSalutation(sal);
		personDetails.setLanguage(new Language("du"));

		String dateString="1984/09/12";
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd");

		try
		{
			personDetails.setBirthDate(dateFormat.parse(dateString));
			personDetails.setEmployedFromX2(dateFormat.parse(dateString));
			personDetails.setMonthlyIncomeX2("100000");

		}
		catch(ParseException e)
		{
			e.printStackTrace();
		}

		personDetails.setPhoneNumberX2(""+lr.eval_string("<p_phone>")+"");
		personDetails.setPhone(""+lr.eval_string("<p_phonenumber>")+"");
		personDetails.setNoOfChildrenX2(1);
		personDetails.setEmployedWithX2("CONVERSION");
		personDetails.setProofOfFinDocX2("Certificate of Employment & Compensation");
		personDetails.setCivilStatusX2("Single");
		personDetails.setNationalityX2("Filipino");
		personDetails.setPreferredPaymentModeX2("Cash");
		personDetails.setOccupationX2("ADMINISTRATIVE STAFF");

		Person person=new Person();
		person.setPersonDetails(personDetails);

		PersonRef personRef = new PersonRef();
		PersonID personID = new PersonID();
		personID.setId("2205");
		personRef.setPersonID(personID);
		person.setPersonRef(personRef);
		PersonIdentification[] personIdentlist = new PersonIdentification[1];
		personIdentlist[0] = new PersonIdentification();
		PersonIdentificationDetails personIdentificationDetails = new PersonIdentificationDetails();

		personIdentificationDetails.setDocumentNumber("Z"+lr.eval_string("<p_DocumentNo>")+"");

		PersonIdentDocumentationType personIdentType = new PersonIdentDocumentationType("ID Card");
		personIdentificationDetails.setDocumentType(personIdentType);

		personIdentlist[0].setPersonIdentificationDetails(personIdentificationDetails);

		ContactRef contactRef = new ContactRef();
		contactRef.setPersonRef(personRef);
		createContact.setContactRef(contactRef);

		/*ContactRoleDetails contactRoleDetails=new ContactRoleDetails();
		contactRoleDetails.setFormattedName("TestPrepaidCust93");
		contactRoleDetails.setRoleName("Primary");

		CreateContactRole createContactRole=new CreateContactRole();

		createContactRole.setContactRoleDetails(contactRoleDetails);*/
		createContact.setPerson(person);
		return createContact;
	}



public CreateContactIDStruct callEjb(Context ctx1)throws Exception
	{
		//InitialContext ctx1=new InitialContext(createContextProperties());

		//Object homeRef=(context).lookup("com.amdocs.cih.services.contact.interfaces.IContactServiceRemote"); 
	IContactServiceRemoteHome home=(IContactServiceRemoteHome)ctx1.lookup("com.amdocs.cih.services.contact.interfaces.IContactServiceRemote");
		
        	
        com.amdocs.cih.services.contact.interfaces.IContactServiceRemote ejb= home.create();

	CreateContact createContactDummy=new CreateContact();

		createContactDummy=createContact();		

		context=new ApplicationContext();
		context.setInitiatorSystemId("Dad");
		CreateContactIDStruct result = null;


          	lr.start_transaction("CRM_POC_UpdateContact");
		System.out.println("Contact Object = "+createContactDummy.getPerson().getPersonDetails().getMothersMaidenNameX2());
		result=ejb.updateContact(context,createContactDummy);	
	   
	    if (result != null) {
		
		System.out.println("Contact updated in CRM with ContactID = : " + result.getPersonIDStruct().getPersonID().getId());

        
		lr.end_transaction("CRM_POC_UpdateContact",lr.AUTO);
	    }

           	else{
		 System.out.println("Customer created Failed in CRM");
		 lr.end_transaction("CRM_POC_UpdateContact", lr.FAIL);
		 	
		}

		//System.out.println(VoUtil.object2String(result,2));
		return result;
	}

		
              //lr.output_message("start time for trans is:"+ "<start_time>");


	public int end() throws Throwable {
		return 0;
	}

}

