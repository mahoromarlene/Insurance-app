Company.create!([
  {name: "RADIANT", description: "RADIANT is a Private Insurance Company which has its Headquarters at Avenue du Commerce at KN2Av Former ETO MUHIMA Kigali, Rwanda,  new building “CHIC INVESTMENT LTD"},
  {name: "SONARWA", description: "SONARWA GENERAL is an insurance company which provide innovative, insurance services to delight stakeholders in the chosen markets"}
])
InsuranceService.create!([
  {name: "Fire Insurance", description: "The Sonarwa Fire Insurance policy is suitable for the owners of property, one who holds property in trust or in commission, and individuals/financial institutions who have financial interest in the property. All immovable and movable property located at a particular premises such as buildings, plant and machinery, furniture, fixtures, fittings and other contents, stocks and stock in process along with goods held in trust or in commission including stocks at suppliers/customer’s premises, machinery temporarily removed from the premises for repairs, can be insured.", price: "30000.0", company_id: 2}
])
User.create!([
  {email: "uwamahoromarlene@gmail.com", password_digest: nil, company: nil, first_name: "Marlene", last_name: "Uwamahoro"}
])
