INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password) VALUES
(1, 'ACruz', 'Alex', 'Cruz', '2001-02-15', 'password123'),
(2, 'Deezee', 'David', 'Zamora', '1997-08-21', 'DavidZ55'),
(3, 'mbrown', 'Michael', 'Brown', '1996-05-30', 'michaeljord23'),
(4, 'JRyle', 'Jeff', 'Reyes', '2004-12-10', 'Jjreyes22'),
(5, 'jwhite', 'Joseph', 'White', '2002-03-14', 'jwzwhite123'),
(6, 'Mattie', 'Mathilda', 'DeOcampo', '1993-07-19', 'Matty2'),
(7, 'JSins', 'Andrei', 'Black', '1999-10-05', 'baldman132'),
(8, 'ECaluag', 'Ed', 'Caluag', '1995-11-22', 'akoMulto');


INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted) VALUES
(1, 1, 2, TRUE),
(2, 2, 3, TRUE),
(3, 3, 1, TRUE),
(4, 4, 5, TRUE),
(5, 5, 6, FALSE),
(6, 6, 7, TRUE),
(7, 7, 8, TRUE),
(8, 8, 1, FALSE);


INSERT INTO `Groups` (GroupID, GroupName, CreatedBy) VALUES
(1, 'Math Club', 1),
(2, 'Scientist Society', 2),
(3, 'Media and Literature Club', 3),
(4, 'History Hunters', 4),
(5, 'Chess Club', 5),
(6, 'Robotics Team', 6),
(7, 'Debate Society', 7),
(8, 'Art Guild', 8);


INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID) VALUES
(1, 'This is a post about calculus.', 1, TRUE, FALSE, 1),
(2, 'Discussion on the periodic table.', 2, TRUE, TRUE, 2),
(3, 'Book club meeting update.', 3, FALSE, TRUE, 3),
(4, 'Exploring ancient civilizations.', 4, TRUE, FALSE, 4),
(5, 'Chess strategies for beginners.', 5, TRUE, FALSE, 5),
(6, 'Building a robot with Arduino.', 6, FALSE, TRUE, 6),
(7, 'Debate techniques and tips.', 7, TRUE, TRUE, 7),
(8, 'Painting with acrylics: A beginner\'s guide.', 8, FALSE, FALSE, 8);


INSERT INTO GroupMembershipRequests (GroupMembershipRequestsID, GroupID, GroupMemberUserID, IsGroupMembershipAccepted) VALUES
(1, 1, 2, TRUE),
(2, 2, 1, FALSE),
(3, 3, 2, TRUE),
(4, 4, 3, TRUE),
(5, 5, 4, FALSE),
(6, 6, 5, TRUE),
(7, 7, 6, TRUE),
(8, 8, 7, FALSE),
(9, 1, 8, TRUE),
(10, 2, 3, TRUE);
