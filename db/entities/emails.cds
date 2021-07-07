namespace surfboard.entities;
using {
  cuid
} from '@sap/cds/common';

entity Emails : cuid {
  type    : Email;
  mailbox : String;
  domain  : String;
}

type Email : String enum {
  Personal;
  Work;
}
