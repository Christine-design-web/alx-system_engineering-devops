The Puzzle
Write a post-mortem for a technical coding project with the following Requirements:
1. Issue Summary duration of the outage with start and end times (including time zone)
- what was the impact (what service was down/slow? What were user experiencing? How many % of the users were affected?)
- what was the root cause?
2. Timeline (format bullet point, format: time — keep it short, 1 or 2 sentences) must contain:
- when was the issue detected?
3. How was the issue detected (monitoring alert, an engineer noticed something, a customer complained…)?
4. Actions taken (what parts of the system were investigated, what were the assumption on the root cause of the issue)
5. misleading investigation/debugging paths that were taken
- which team/individuals was the incident escalated to
- how the incident was resolved
6. Root cause and resolution must contain:
- explain in detail what was causing the issue
- explain in detail how the issue was fixed
7. Corrective and preventative measures must contain:
- what are the things that can be improved/fixed (broadly speaking)
A list of tasks to address the issue (be very specific, like a TODO, example: patch Nginx server, add monitoring on server memory…)
Issue Summary:
May 10, 2022, 2:30 p.m. to 5:00 p.m. (WAT), In
, our e-commerce site experienced a total failure.
The website stopped responding and users could not access it during this time.
Impact:
The outage affected all services provided on the website, including the product listing, the shopping cart function and the checkout process. All users trying to access the site have encountered error messages or an unresponsive page. We estimate that around 80% of our users were affected by the outage.
Root Cause:
The root cause of the error was a memory leak on our web application server. A memory leak caused the server to become overloaded and unresponsive, resulting in a full website shutdown.
Timeline:
- 2:30 PM — The issue was first detected by our monitoring system, which sent out an alert to the operations team.
- 2:35 PM — The operations team attempted to restart the web application server, but this did not resolve the issue.
- 2:40 PM — The team began investigating the issue, assuming it was a problem with the server’s configuration.
- 3:00 PM — Further investigation revealed that the server’s memory usage was abnormally high, leading the team to suspect a memory leak.
- 3:15 PM — The team started looking into the application’s code to identify any potential causes of the memory leak.
- 3:45 PM — The team identified the memory leak in the code and began working on a fix.
- 4:30 PM — The team deployed the fix and restarted the web application server.
- 4:45 PM — The website was back online and fully operational.
Misleading Investigation/Debugging Paths:
The team initially assumed that the problem was related to the server configuration and invested valuable time investigating. This delayed determining the true cause of the problem.
Incident Escalation:
The incident was initially handled by the operations team, but was escalated to the development team when they realized the problem was with the application code.
Resolution:
A memory leak in the web application code was identified and fixed. The fix included optimizing the code and implementing memory management best practices. The web application server was restarted after patch deployment and full website functionality was restored.
Corrective and Preventative Measures:
To prevent similar issues in the future, we will implement the following corrective and preventative measures:
- Perform regular code reviews to identify potential memory leaks.
- Implement more rigorous testing procedures to catch memory leaks before they make it to production.
- Implement more robust monitoring of server performance and resource usage.
- Improve documentation and training for the operations team to better handle incidents like this in the future.
Specific tasks to address the issue include:
- Conduct a comprehensive code review of the web application code.
- Implement additional automated tests to detect memory leaks.
- Update monitoring tools to include more granular resource usage data.
- Provide additional training for operations team members on troubleshooting web application issues.
