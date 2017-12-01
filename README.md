# PresPrice
PresPrice
Description: With this app I am attempting to address the expensiveness of purchasing medicine by creating an app that compares the prices of medications across different pharmacies. This app allows you to create an account, login, and search one and two medications at a time.  When a medicine is searched for matching results will be displayed and the prices of that medicine across different stores will be displayed to the user.

List of medications:
The information for each medication includes name and generic alternative and prices from Walmart, CVS, Walgreens and Rite Aid.

How to run PresPrice:
PresPrice is a Ruby on Rails application  It should be run on computer and you will need an internet browser and use of your terminal to access it. In order to run PresPrice you will need to have the latest versions of Ruby on Rails installed on your computer. To check which version you have installed, type rails -v in your terminal.

rails -v Rails 5.1.4

This will tell you what version you have installed.

Next, download the PresPrice repository and change to that directory in your terminal. You will need to rake the database to have access to the user accounts and medicines tables so enter rake db:seed then rake db:migrate into the terminal.

After you have done this enter rails server into terminal and go to http://localhost:3000  in your browser.  You should now be able to access the site.  The homepage will be a blue screen with a login form.
