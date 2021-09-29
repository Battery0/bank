# Bank Challenge

Bank app that allows you to add deposits & withdrawals to your account that is tracked.Allows you to<br>
print your stored transactional history.

## Note to Coaches - Submission 1

* I was in two minds as to whether the transaction should be its own class or not,ended up going<br>
with not, but happy to receive feedback if this isn't the case so I can make improvements.

## Planning

My approach started with thinking about the problem and jotting down the types of potential classes<br>
that would be required, the state they might hold and their behaviours. This led to the initial domain<br>
model as pictured below.

* I thought about which behaviours would likely be public/private
* Thought about classes / behaviours would likely interact with each other. Trying to keep to low coupling.
* I had thought about designing a user class but decided against, as this program is only run from the terminal.

First draft of the domain model, this has evolved during coding:

[Domain Model - First Draft](https://github.com/Battery0/bank/blob/main/public/domain_model_first_draft.png)

## Code Structure

The program is made up of two classes - Account and PrintBankStatement. Within the account are the methods<br>
related to interacting with the account, such as credit, debit and transactions due to keeping all the information<br>
related to the account in one class in line with SoC and SRP. The sole responsibility of PrintBankStatement class is<br>
to print out the transactional history of the account in a formatted way in line with the specification of the challenge.

## Getting Started

To get started please run:
`git clone https://github.com/Battery0/bank.git`

In the project directory, please run:
`bundle install`

## Usage

To start the program you will need to run in the terminal:

* Create a new Account object (E.g: account = Account.new)

Run any of the following methods to interact with the account:

* account.credit(int or float value) (This credits your account with the value specified)
* account.debit(int or float value) (This debits your account with the value specified)
* account.account_statement (This prints your accounts transactional history)

Picture of program running:
[Program running in terminal](https://github.com/Battery0/bank/blob/main/public/program_running_in_terminal.png)

## Running Tests

To run the suite of tests, please run:

`rspec`

To run rubocop, please run:

`rubocop`
