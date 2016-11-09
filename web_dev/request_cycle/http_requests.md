Status codes are grouped by classes.
1xx are informational.
2xx are successes codes.
3xx are redirected codes.
4xx and 5xx are client and server errors, respectively.
404 is the most common error code and it means the requested resource is not found (or available)
403 is a similar common but it means the requested resource was found but access is restricted.
200 means a successful request.

GET requests in short are unchangable and therefore primarily used to view a reference (retrieve data). They do not contain a body and comprise of key/value pair requests, which are appended to the url. Since it's only a fetch request, there is no change to the server.
POST requests append the key/value pairs inside the body of the http request and are used primarily to add to change some reference data of a key/value pair. Since the key/value pairs are located in the body of the request, the URL is much cleaner. Basically, unlike GET requests, POST is used to send/change data on the server.

a web cookie is a small plain text file a server sends to a user's browser. The webpage or server is instructed to send this file back with each request. This allows the server to verify user credentials through the rest of the browsing experience.