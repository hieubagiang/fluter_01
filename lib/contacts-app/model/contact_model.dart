
import 'dart:typed_data';

import 'package:contacts_service/contacts_service.dart';

class Contact{
  // Name
  String displayName, givenName, middleName, prefix, suffix, familyName;

// Company
  String company, jobTitle;

// Email addresses
  Iterable<Item> emails = [];

// Phone numbers
  Iterable<Item> phones = [];

// Post addresses
  Iterable<PostalAddress> postalAddresses = [];

// Contact avatar/thumbnail
  Uint8List avatar;

  Contact(
      {this.displayName,
      this.givenName,
      this.middleName,
      this.prefix,
      this.suffix,
      this.familyName,
      this.company,
      this.jobTitle,
      this.emails,
      this.phones,
      this.postalAddresses,
      this.avatar});

  @override
  String toString() {
    return 'Contact{displayName: $displayName, givenName: $givenName, middleName: $middleName, prefix: $prefix, suffix: $suffix, familyName: $familyName, company: $company, jobTitle: $jobTitle, emails: $emails, phones: $phones, postalAddresses: $postalAddresses, avatar: $avatar}';
  }
}
