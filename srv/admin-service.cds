using surfboard.entities.Onboardings as onboardings from '../db/entities/onboardings';
using surfboard.entities.Projects as projects from '../db/entities/projects';
using surfboard.entities.RateCards as rateCards from '../db/entities/rateCards';
using surfboard.entities.Users as users from '../db/entities/users';
using surfboard.entities.Emails as emails from '../db/entities/emails';

service AdminService @(_requires : 'authenticated_user', path: '/admin') {
  entity Onboardings @(
        restrict: [
            {grant: 'READ', to: 'Admin'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    ) as projection on onboardings;
  entity Projects @(
        restrict: [
            {grant: 'READ', to: 'Admin'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    )  as projection on projects;
  entity RateCards @(
        restrict: [
            {grant: 'READ', to: 'Admin'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    )  as projection on rateCards;
  entity Users @(
        restrict: [
            {grant: 'READ', to: 'Admin'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    )  as projection on users;
}
