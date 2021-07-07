const cds = require('@sap/cds');
module.exports = async function () {

  const db = await cds.connect.to('db')
  const { Users, Projects, RateCards, Onboardings } = db.entities

  this.after('READ', 'Users', user => {
    console.log(user);
  })

  this.after('READ', 'Onboardings', onboarding => {
    console.log(onboarding);
  })
}