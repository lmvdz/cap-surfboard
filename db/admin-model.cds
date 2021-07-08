using {managed} from '@sap/cds/common';

using { surfboard.entities.RateCards as RateCards } from './entities/rateCards.cds';
using { surfboard.entities.Projects as Projects } from './entities/projects.cds';
using { surfboard.entities.Users as Users } from './entities/users.cds';
using { surfboard.entities.Onboardings as Onboardings } from './entities/onboardings.cds';

extend RateCards with managed;
extend Projects with managed;
extend Users with managed;
extend Onboardings with managed;
