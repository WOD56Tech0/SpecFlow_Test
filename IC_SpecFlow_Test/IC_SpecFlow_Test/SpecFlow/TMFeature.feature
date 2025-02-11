﻿Feature: TMFeature
	As a TurnUp Portal admin
	I would like to create, edit and delete time and material records
	So that I manage employee time and materials successfully

@tmtest @regression
Scenario Outline: 1. create time and material record with valid details 
	Given I logged into turn up portal successfully
	And I navigate to time and material page
	When I create '<Code>', '<TypeCode>', '<Description>', '<Price>' on time and material record
	Then the record should be created '<Code>', '<TypeCode>', '<Description>', '<Price>'

	Examples: 
	| Code             | TypeCode | Description                 | Price  |
	| AutomatedScript  | T        | AutomatedScript             | 37.00  |

@tmtest @regression
Scenario Outline: 2. edit time and material record with valid details 
	Given I logged into turn up portal successfully
	And I navigate to time and material page
	When I update '<Code>', '<TypeCode>', '<Description>', '<Price>' on an time and material record
	Then the tm record should have the updated '<Code>', '<TypeCode>', '<Description>', '<Price>' 

	Examples: 
	| Code             | TypeCode | Description                 | Price  |
	| Automated Script | M        | Automated Script is changed | 170.00 |

@tmtest @regression
Scenario Outline: 3. delete time and material record with valid details 
	Given I logged into turn up portal successfully
	And I navigate to time and material page
	When I delete on an time and material record
	Then the record should have the deleted successfully