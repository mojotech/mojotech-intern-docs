# Project Ideas

### Meeting preparation

A tool to help meeting organizers and attendees better prepare for and record notes from a meeting. One of the discoveries from the PT Estimator requirements gathering is PMs are struggling to get devs to read and comment on stories before a planning meeting.
* Provide a means to create an agenda
* Easy to find and read meeting materials (maybe a reminder X before a meeting to review notes if you haven't)
* Estimate how long it takes to read the materials to not have rushed meeting prep for attendees
* Tool for taking/sharing notes from a meeting

### Enroll Me for Slack

Long conversation in slack are often hard to stay on top of during the work day. This tool would some how extract the relevant portions of a conversation for an enrolled user to read at a later time.

### mojotech new tab homepage

Browser extension that brought in like upcoming bdays, lunches for the week, holidays, who is out of the office, upcoming team meetings, how we’re tracking on goals

### Speed coding challenge

Competitive games exist for typing and code implementation, but there appears to be a gap for reshaping code in your editor/IDE of choice. This would present editor challenges like:
* Switch case of vars
* Reorder words, sentences, paragraphs
* Advanced find/replace
* Extract a method
* Swap keys/values in a hash
* Repeated steps / macros

Problems:
* IO monitoring. How do we tell if the developer is started/done?
* Feedback. How we let the developer know there is still work to perform.
* Displaying keys pressed.
* Recording. It would be fun to see how others solve the problem in their editor.

### Helios frontend write (sveltejs)

This is an exercise in rewriting the helios frontend in sveltejs, rollup, and polka.

Problems:
* Define an interface for the client (modernizr)
* Learn how to use sveltejs, rollup, polka

### Where's the line

Description: Every year watching the super bowl, someone repeats the joke quoting some fan at a stadium asking "where's the line" for first down. This project would capture a live football game with the camera and draw in the line on the field beneath the players.

Problems:
* Detecting football players
* Drawing a line on a field beneath players at a specific vector
* Querying the status of the game (NFL API?)
* Determining where the camera is looking on a field
* Determining where in the camera FOV the line should be drawn

Maybe use ML? If so, new problems:
* Collecting data of players vs field
* Collecting data of correctly drawn lines

### Open source jamboard

Description: Google jamboard but open source. Will wants to use CRDTs.

Jamboard alternatives (none of them open source):
https://www.techrepublic.com/article/google-jamboard-too-pricy-here-are-4-low-cost-virtual-whiteboard-app-alternatives/

Problems:
* Setting up a server for asynchronous communication with clients
* Preview (Google cast display?) and Edit (laptop/tablet)
* Dealing with CRDT network chattiness
* Integrating with third party document/file services

### Web app monitor app

Description: app that monitors a domain/url for a specific http response (Craig J had worked on a previous version with a former intern)

### Apple two factor auth forwarded

Description: What is happening right now is we have 2 factor codes that usually go to an Apple device that is logged in on another device. If that isn’t working you can text a code to the phone number on file. The issue with that is, what if the person isn’t around? So my idea is to set it up with a number that will then forward it to slack.

### Pull request CLI

Description: I use my editor to view the branches of pull requests since it provides a number of benefits:
 * View code with preferred formatting
 * Verify code formating and functionality locally
 * Search for code (check for orphans or errors)
 * Prototype inline alternatves

Where this breaks down is viewing and adding comments. Switching to a browser to copy/paste is tedious.

Problems:
* Consume pull requests API. github, maybe bitbucket. consolidation would be nice since I use both right now.
* Develop a CLI format for consuming/producing comments. Maybe use a linter style output since a number of editors already support that.
* Develop plugins for editors: vim, emacs, vscode.
* Integration third party issue trackers (jira, pivotal, trello). Would be nice not to search/copy/paste issue numbers when branching/committing. Could be other CLI tools.

### allocate

A digital product to coordinate scheduling of constrained resources. This is used to schedule which mojos are on a project and for how long.

Technologies: rails and javascript (marionettejs)

Opportunities:
* Adopt an existing projects and address its technical debt
* Switch to react over marionette
* Integration with bamboohr API for PTO sync
* Design team has mentioned interest
* Develop an API
* Add more clients (cli, slack)

https://github.com/mojotech/allocate

### Standup Hub

Project management tool to share team stand ups.

Technologies: go and react (15)

Opportunities:
* Adopt an existing projects and address its technical debt
* Upgrade react 15 to react 16
* Dog-fooding. Use the tool you're working on for tasks 
* Design team has mentioned interest
* Integrations with pivotal tracker, slack, and github
* Develop an API
* Different client methods (web, cli, slack)

https://github.com/mojotech/standup-web
https://github.com/mojotech/standup-api

### Jacob's costing spreadsheet

Jacob maintains a google spreadsheet once a month to assess the costing of the organization which groups costs into employees, teams, departments, locations, and clients. This process is tedious and likely can be improved with an application.

Technologies: TBD

Opportunities:
* Bootstrap a new project
* Requirements gathering from an existing product owner 
* Integration with existing service: allocate

### GuestBook App completion (react-native)

The guestbook device is currently running a web app on an iPad. Last year, Jen and Steph began work on convertting the project to a react-native application. There are still a number of open issues to resolve before the application can go live.

Technologies: react-native

Opportunities:
* Adopt an existing projects and address its technical debt
* Design team has mentioned interest
* Working in a mobile environment
* Improve integration with slack

### GuestBook App rewrite (flutter)

This is an exercise in rewriting the guestbook react-native app in dart/flutter which is an up and coming competing technology from google.

Technologies: dart/flutter

Opportunities:
* Bootstrap a new project
* Learn a completely new language
* Adopt an existing projects and address its technical debt (referencing react-native guestbook)
* Working in a mobile environment
* Present comparison between flutter and react-native

### Pivotal Tracker pointing tool

A pivotal tracking tool for pointing stories as a team. Currently teams have count down through something like slack before posting estimates to avoid confirmation bias. This would provide a means to integrate with pivotal tracker and collect estimates to then be reconciled to a final estimate.

Technologies: TBD

Opportunities:
* Bootstrap a new project
* Dog-fooding. Use the tool you're working on for tasks 
* Design team has mentioned interest
* Integrations with pivotal tracker and slack
* Develop an API
* Different client methods (web, cli, slack)

Existing repos: github.com/mojotech/pt-estimator/
