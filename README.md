# Bank Challenge

Bank app that allows you to add deposits & withdrawals to your account that is tracked.<br>
Allows you to print your stored transactional history.

## Note to Coaches - Submission 1

* I was in two minds as to whether the transaction should be its own class or not,<br>
ended up going with not, but happy to receive feedback if this isn't the case so I can make<br>
improvements.

## Planning

First draft of the domain model, this has evolved during coding.

[Domain Model - First Draft](https://github.com/Battery0/bank/blob/main/public/domain_model_first_draft.png)

## Getting Started

To get started please run:
`git clone https://github.com/Battery0/bank.git`

In the project directly, please run:
`bundle install`

## Usage

To start the program you will need to run in the terminal:

* Create a new Account object (E.g: account = Account.new)

Run any of the following methods to interact with the account:

* account.credit(int or float value) (This credits your account with the value specified)
* account.debit(int or float value) (This debits your account with the value specified)
* account.account_statement (This prints your accounts transactional history)

## Running Tests

To run the suite of tests, please run:

`rspec`
