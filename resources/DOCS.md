Routes are as follows:-
1. http://localhost:3001/routes/author/:userId :- This route is for fetching author information. The ":id" should be replaced by the userId of the author you want the information about

2. http://localhost:3001/routes/getSimilarPosts/:category :- This route is for fetching similar posts, ordered by their creation date, in decending order. If you enter a category name instead of ":category" in the url, you will get other same category posts in decending order of their creation date

## Changes in Database:

1. Added about column in users
2. Added categoryImg column in category_master
