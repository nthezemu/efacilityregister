# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Utility.create(name: 'Electricity', provider: 'Escom')
Utility.create(name: 'Electricity', provider: 'Solar power')
Utility.create(name: 'Electricity', provider: 'Windmill')
Utility.create(name: 'Water', provider: 'Blantyre water Board')
Utility.create(name: 'Water', provider: 'Lilongwe water Board')
Utility.create(name: 'Water', provider: 'Northern region water Board')
Utility.create(name: 'Water', provider: 'Central region water Board')
Utility.create(name: 'Water', provider: 'Southern region water Board')
Utility.create(name: 'Water', provider: 'Other')
Utility.create(name: 'internet', provider: 'Access')
Utility.create(name: 'internet', provider: 'Broad Band')
Utility.create(name: 'internet', provider: 'Globle internet')
Utility.create(name: 'internet', provider: 'MTL')
Utility.create(name: 'internet', provider: 'TNM')
Utility.create(name: 'internet', provider: 'Airtel')

Service.create(name: 'Surgery')
Service.create(name: 'family planning')
Service.create(name: 'Maternity')
Service.create(name: 'Dental')

Facility.create(facility_id: 'LL01001', name: 'bwaila', description: 'This is in Lilongwe', cell_location: 'Lilongwe', closing_date: '2070-10-10', opening_date: '2017
	-10-10', parent_facility: 'Kamuzu Central Hospital', email_address: 'bwaila@gmail.com', phone_number: '+26512345612', type_code: 'hospital', latitude: '33.77561', longitude: '-13.99164', status: 'Functional', service_id: '1', created_by: 'Blessings', approved_by: 'Lyton',created_at:  '2017-10-10', updated_at: '2017-10-10');

Facility.create(facility_id: 'LL01002', name: 'Area 25 Health centre', description: 'This is in area 25', cell_location: 'Lilongwe', closing_date: '2070-10-10', opening_date: '2017
	-10-10', parent_facility: 'Kamuzu Central Hospital', email_address: 'area25@gmail.com', phone_number: '+265123534512', type_code: 'health centre', latitude: '33.77465', longitude: '-13.89272', status: 'Functional', service_id: '1', created_by: 'Blessings', approved_by: 'Lyton',created_at:  '2017-10-10', updated_at: '2017-10-10');
Facility.create(facility_id: 'DA04001', name: 'chankhungu', description: 'This is in dowa', cell_location: 'dowa', closing_date: '2070-10-10', opening_date: '2017
	-10-10', parent_facility: 'Dowa district hospital', email_address: 'chamkhungua@gmail.com', phone_number: '+26512345612', type_code: 'dispensary', latitude: '33.77465', longitude: '-13.89272', status: 'Functional', service_id: '1', created_by: 'Blessings', approved_by: 'Lyton',created_at:  '2017-10-10', updated_at: '2017-10-10');
Facility.create(facility_id: 'MZ02003', name: 'Mzimba district hospital', description: 'This is in Mzimba', cell_location: 'Mzimba', closing_date: '2070-10-10', opening_date: '2017
	-10-10', parent_facility: 'Mzuzu Central Hospital', email_address: 'mzdh@gmail.com', phone_number: '+26512345612', type_code: 'hospital', latitude: '33.58421', longitude: '-11.89805', status: 'Functional', service_id: '1', created_by: 'Blessings', approved_by: 'Lyton',created_at:  '2017-10-10', updated_at: '2017-10-10');

FacilityUtility.create(facility_id: 'LL01002', utility_id: '2', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '3', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '9', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01001', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '1', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '11', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '7', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01002', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '2', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '3', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '9', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01001', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '1', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '11', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '7', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'DA04001', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '2', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '3', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '9', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'LL01001', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '1', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '11', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '7', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityUtility.create(facility_id: 'MZ02003', utility_id: '8', utility_description: 'This is in use', utility_status: 'operational',created_at: '2017-10-10', updated_at: '2017-10-10')

Personel.create(facility_id: 'MZ02003',username:'kuunika', password:'kuunika', block: '', block_reason: '', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'MZ02003', service_id: '1',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'MZ02003', service_id: '2',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'MZ02003', service_id: '4',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'MZ02003', service_id: '5',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'DA04001', service_id: '1',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'DA04001', service_id: '2',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'DA04001', service_id: '4',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'DA04001', service_id: '5',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityService.create(facility_id:'LL01002', service_id: '1',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01002', service_id: '2',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01002', service_id: '4',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01002', service_id: '5',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01001', service_id: '1',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01001', service_id: '2',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01001', service_id: '4',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityService.create(facility_id:'LL01001', service_id: '5',service_description: 'The service is being provided', created_at: '2017-10-10', updated_at: '2017-10-10')
Location.create(zone: 'Central West', district: 'Lilongwe',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central West', district: 'Dedza',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central West', district: 'Mchinji',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central West', district: 'Ntcheu',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central East', district: 'Dowa',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central East', district: 'Kasungu',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central East', district: 'Ntchisi',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

Location.create(zone: 'Central East', district: 'salima
	',area: '10000', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityLocation.create(facility_id: 'LL01001',location_id: '1', population: '10000',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityLocation.create(facility_id: 'LL01002',location_id: '1', population: '10000',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityLocation.create(facility_id: 'DA04001',location_id: '1', population: '10000',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityLocation.create(facility_id: 'MZ02003',location_id: '1', population: '10000',created_at: '2017-10-10', updated_at: '2017-10-10')
Partner.create(name: 'CDC', origin: 'America', created_at: '2017-10-10', updated_at: '2017-10-10')

Partner.create(name: 'USAID', origin: 'America', created_at: '2017-10-10', updated_at: '2017-10-10')

Partner.create(name: 'EGPAF', origin: 'United Kingdom', created_at: '2017-10-10', updated_at: '2017-10-10')

Partner.create(name: 'BHT', origin: 'America', created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityPartner.create(facility_id: 'LL01001', partner_id: '1')

FacilityPartner.create(facility_id: 'LL01002', partner_id: '2')

FacilityPartner.create(facility_id: 'DA04001', partner_id: '3')

FacilityPartner.create(facility_id: 'MZ02003', partner_id: '4')

Ownership.create(name: 'Government',created_at: '2017-10-10', updated_at: '2017-10-10')

Ownership.create(name: 'Private',created_at: '2017-10-10', updated_at: '2017-10-10')

Ownership.create(name: 'Company',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityOwnership.create(facility_id: 'LL01001',ownership_id: '1', ownership_type: 'parastatal',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityOwnership.create(facility_id: 'LL01002',ownership_id: '1', ownership_type: 'parastatal',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityOwnership.create(facility_id: 'DA04001',ownership_id: '1', ownership_type: 'parastatal',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityOwnership.create(facility_id: 'MZ02003',ownership_id: '1', ownership_type: 'parastatal',created_at: '2017-10-10', updated_at: '2017-10-10')

Role.create(role_name: 'Administrator', created_at: '2017-10-10', updated_at: '2017-10-10')

Role.create(role_name: 'Super user', created_at: '2017-10-10', updated_at: '2017-10-10')

Role.create(role_name: 'Data Manager', created_at: '2017-10-10', updated_at: '2017-10-10')


PersonelRole.create(person_id: '1',role_id: '1',created_at: '2017-10-10', updated_at: '2017-10-10')

Resource.create(name: 'Patient beds',created_at: '2017-10-10', updated_at: '2017-10-10')
Resource.create(name: 'Ambulances',created_at: '2017-10-10', updated_at: '2017-10-10')
Resource.create(name: 'Freezers',created_at: '2017-10-10', updated_at: '2017-10-10')
Resource.create(name: 'Computers',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityResource.create(facility_id: 'LL01001',resource_id: '1',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01001',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01001',resource_id: '3',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01001',resource_id: '4',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01002',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01002',resource_id: '1',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01002',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01002',resource_id: '3',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'LL01002',resource_id: '4',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')

FacilityResource.create(facility_id: 'DA04001',resource_id: '1',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'DA04001',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'DA04001',resource_id: '3',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'DA04001',resource_id: '4',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'MZ02003',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'MZ02003',resource_id: '1',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'MZ02003',resource_id: '2',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'MZ02003',resource_id: '3',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')
FacilityResource.create(facility_id: 'MZ02003',resource_id: '4',resource_quantity: '5',resource_description: 'This is functional',created_at: '2017-10-10', updated_at: '2017-10-10')