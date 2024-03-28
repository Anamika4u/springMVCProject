package contactcrudoperation.contactDAO;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import contactcrudoperation.model.Contact;


@Component
public class ContactDAO {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create
	@Transactional
	public void createContact(Contact contact) {

		this.hibernateTemplate.save(contact);

	}

	// get all Contacts
	public List<Contact> getContacts() {
		List<Contact> contacts = this.hibernateTemplate.loadAll(Contact.class);
		return contacts;
	}

	// delete the single Contact
		@Transactional
		public void deleteContact(int pid) {
			Contact p = this.hibernateTemplate.load(Contact.class, pid);
			this.hibernateTemplate.delete(p);
		}

		// get the single product
		public Contact getContact(int pid) {
			return this.hibernateTemplate.get(Contact.class, pid);
		}

}