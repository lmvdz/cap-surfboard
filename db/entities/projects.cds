namespace surfboard.entities;

using surfboard.entities.Onboardings as Onboardings from './onboardings';
using surfboard.entities.RateCards as RateCards from './rateCards';
using {cuid} from '@sap/cds/common';

entity Projects : cuid {
  rateCards   : Composition of many {
                  key rateCard : Association to RateCards
                };
  resources   : Composition of many {
                  key onboarding : Association to Onboardings
                };
  title       : String;
  description : String;

}
