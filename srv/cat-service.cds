using surfboard.entities.Users as users from '../db/entities/users';
using surfboard.entities.Onboardings as onboardings from '../db/entities/onboardings';
using surfboard.entities.RateCards as rateCards from '../db/entities/rateCards';
using surfboard.entities.Projects as projects from '../db/entities/projects';

service CatalogService @( path : '/browse' ) {

    @readonly
    entity Users @(
        restrict: [
            {grant: 'READ'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    ) as projection on users;

    @readonly
    entity Onboardings @(
        restrict: [
            {grant: 'READ'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    ) as projection on onboardings;

    @readonly
    entity RateCards @(
        restrict: [
            {grant: 'READ'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    ) as projection on rateCards;

    @readonly
    entity Projects @(
        restrict: [
            {grant: 'READ'},
            {grant: 'WRITE', to: 'Admin'}
        ]
    ) as projection on projects;

    @requires_ : 'authenticated-user'
    action submitRateCard();

    @requires_ : 'authenticated-user'
    action submitOnboarding(firstName : String, lastName : String, personalEmail : String);

    @requires_ : 'authenticated-user'
    action submitUser();

    @requires_ : 'authenticated-user'
    action submitProject();
}
