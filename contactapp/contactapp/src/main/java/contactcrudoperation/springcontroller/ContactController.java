package contactcrudoperation.springcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import contactcrudoperation.contactDAO.ContactDAO;
import contactcrudoperation.model.Contact;
import jakarta.servlet.http.HttpServletRequest;


@Controller
@Validated
public class ContactController {
	
	@Autowired
	private ContactDAO contactDAO;

	@RequestMapping("/")
	public String home(Model m) {

		List<Contact> contacts = contactDAO.getContacts();
		m.addAttribute("contacts",contacts);

		return "index";
	}

	// show add Contact form
	@RequestMapping("/add-contact")
	public String addContact(Model m) {
		m.addAttribute("title", "Add Contact");
		return "add_contact_form";
	}

//	handle add Contact form
	@RequestMapping(value = "/handle-contact", method = RequestMethod.POST)
	public RedirectView handleContact(@ModelAttribute Contact contact, HttpServletRequest request) {
		System.out.println(contact);
		contactDAO.createContact(contact);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("/update/{id}")
	public String updateForm(@PathVariable("id") int id, Model model)
	{
		Contact contact = this.contactDAO.getContact(id);
		model.addAttribute("contact", contact);
		return "update_form";
	}
	// delete handler
		@RequestMapping("/delete/{id}")
		public RedirectView deleteContact(@PathVariable("id") int id, HttpServletRequest request) {
			this.contactDAO.deleteContact(id);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/");
			return redirectView;
		}
	
}
