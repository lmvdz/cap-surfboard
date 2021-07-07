namespace surfboard.entities;


using surfboard.entities.Projects as Projects from './projects';
using surfboard.entities.Onboardings as Onboardings from './onboardings';
using {
  cuid,
  temporal
} from '@sap/cds/common';

entity RateCards : cuid, temporal {
  onboarding : Association to Onboardings;
  project    : Association to Projects;
}
