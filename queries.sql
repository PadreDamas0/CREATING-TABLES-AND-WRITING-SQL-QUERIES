-- query #1 select all users who are born between January 1 2000 and December 31 2004.
SELECT 
    Username, 
    FirstName, 
    LastName, 
    DateOfBirth
FROM Users
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

-- query 2select all the posts written by the user with a UserID of 4.
SELECT 
    PostID, 
    PostDescription, 
    IsPublic, 
    IsOnlyForFriends, 
    GroupID, 
    DatePosted
FROM Posts
WHERE PostedBy = 4;

-- query 3 select all the group names existing in the database.
SELECT 
    GroupName
FROM `Groups`;

-- Query 4: Select all the group membership requests made by the user with a UserID of 2.
SELECT 
    GroupMembershipRequestsID, 
    GroupID, 
    GroupMemberUserID, 
    IsGroupMembershipAccepted, 
    DateAccepted
FROM GroupMembershipRequests
WHERE GroupMemberUserID = 2;

-- Query 5, select all the friends of the user with a UserID of 2
SELECT 
    u1.Username AS User, 
    u2.Username AS Friend
FROM Users u1
JOIN Friends f ON u1.UserID = f.FriendWhoAdded
JOIN Users u2 ON f.FriendBeingAdded = u2.UserID
WHERE u1.UserID = 2 AND f.IsAccepted = TRUE;

-- Query 6 Select all the friend requests that the user with aUserID of 1 has sent. the friend request can either be accepted or not yet accepted.
SELECT 
    FriendID, 
    FriendBeingAdded, 
    IsAccepted, 
    DateAdded
FROM Friends
WHERE FriendWhoAdded = 1;

-- query 7 Select all the posts visible only for the group with a groupID of 2
SELECT 
    PostID, 
    PostDescription, 
    PostedBy, 
    IsPublic, 
    IsOnlyForFriends, 
    DatePosted
FROM Posts
WHERE GroupID = 2 AND IsOnlyForFriends = TRUE;

-- Query 8 select all the groupmembership requests from the group with a GroupID of 2 that are not yyet accepted.
SELECT 
    GroupMembershipRequestsID, 
    GroupID, 
    GroupMemberUserID, 
    IsGroupMembershipAccepted, 
    DateAccepted
FROM GroupMembershipRequests
WHERE GroupID = 2 AND IsGroupMembershipAccepted = FALSE;
