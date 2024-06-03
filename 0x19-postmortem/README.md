Postmortem Report - June 3, 2024
Overview
Software systems, regardless of their robustness, are prone to failures due to various factors such as bugs, traffic spikes, security issues, hardware malfunctions, natural disasters, and human errors. While failures are inevitable, they present valuable opportunities for learning and improvement. A competent Software Engineer must learn from these incidents to prevent recurrence. It is acceptable to fail once, but repeating the same mistake is not.

Postmortems are essential tools in the tech industry. After any system outage, the responsible team(s) document a summary with two main objectives:

To provide accessible information to the company's employees about the cause of the outage, especially since such events can significantly impact the company. This ensures that managers and executives understand what happened and its potential effects on their work.
To identify the root cause(s) of the outage and ensure measures are taken to prevent future occurrences.
This postmortem details an actual incident that occurred today, June 3, 2024, with a project I am currently working on. It serves as a learning example for developers and newcomers in the Software Engineering field, highlighting the importance of postmortem practices.

Incident Case
Project: Development of an application utilizing GraphQL and ReactJS with Apollo as the client, with some responses tested by an AWS Lambda function.

Issue Summary
Date: June 3, 2024
Duration: 9:35 AM PST to 10:42 AM PST
Impact: The application became non-functional, with the user interface displaying only code errors and not allowing any actions.

Apparent Cause
A poorly installed update of the Apollo client caused disruption in the data queries between the server and the client.

Timeline of Events
9:35 AM: The issue was detected when the application failed to display data loaded by GraphQL queries from the AWS Lambda function.
9:45 AM: Initial verification confirmed that the base code in the ReactJS components had not been altered.
9:57 AM: The integrity of the Lambda service was checked and found to be intact.
10:15 AM: Testing of the integrity of queries and APIs between the client and server was conducted.
10:40 AM: All dependencies were reinstalled individually, and the application was tested after each installation.
10:46 AM: It was discovered that a dependency, Apollo, was not correctly downloaded, causing a runtime error that affected the integration of queries between the client and server.
Root Cause and Resolution
The service interruption was caused by an improperly downloaded dependency, Apollo, which integrates GraphQL and Lambda queries. The application was initially using Apollo version 2.0 but had been updated to version 3.0. The update download was corrupted, causing the installation to fail. The resolution involved reinstalling the Apollo dependency correctly, which restored the application's functionality.

Conclusion
Today's incident underscores the importance of rigorous testing and verification during updates and dependency installations. By documenting this postmortem, we aim to prevent similar issues in the future and highlight the critical role of thorough investigation and prompt resolution in maintaining system reliability.
