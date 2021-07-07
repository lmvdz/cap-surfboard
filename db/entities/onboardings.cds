namespace surfboard.entities;

using surfboard.entities.Projects as Projects from './projects';
using surfboard.entities.RateCards as RateCards from './rateCards';
using surfboard.entities.Emails as Emails from './emails';

using {
  cuid,
  temporal,
  Country
} from '@sap/cds/common';

entity Onboardings : cuid, temporal {
  firstName     : String;
  lastName      : String;
  personalEmail : Association to Emails;
  businessEmail : Association to Emails;
  type          : Worker;
  rateCards     : Composition of many {
                    key rateCard : Association to RateCards
                  }
  projects      : Composition of many {
                    key project : Association to Projects
                  }
  usageLocation : Country;
  mobilePhone   : String;

}


type Worker : String enum {
  Contractor;
  ContingentWorker;
  Employee;
}

entity Addresses {
  street  : String;
  city    : String;
  state   : String;
  zip     : String;
  country : Country;
}
