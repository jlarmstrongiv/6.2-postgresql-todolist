CREATE TABLE todolist (
  id serial,
  title VARCHAR(255) NOT NULL,
  details TEXT,
  priority INT NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at DATE
);

INSERT INTO todolist (title, priority, completed_at)
VALUES ('Write Emails', 2, (to_date('2017-06-09', 'YYYY-MM-DD')));

INSERT INTO todolist (title, priority)
  VALUES ('Get Gasoline', 1),
    ('Do Projects', 1),
    ('Do Annotated Bibliography', 1),
    ('Make Phone Calls', 2);

SELECT *
FROM todolist
WHERE NOT(completed_at IS NOT NULL);

SELECT *
FROM todolist
WHERE priority > 1; --interesting, 1 is generally highest priority for me

UPDATE todolist
SET completed_at = (to_date('2017-06-09', 'YYYY-MM-DD'))
WHERE id = 5;

DELETE FROM todolist
WHERE completed_at IS NOT NULL;

DROP TABLE todolist;
--Totally never had to use it
