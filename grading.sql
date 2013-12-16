SELECT users.name, sum(choices.correct)
FROM answers
JOIN users on answers.user_id = users.id
JOIN choices on answers.choice_id = choices.id
GROUP BY users.id

SELECT users.name, sum(choices.correct * 10)
FROM answers
JOIN users on answers.user_id = users.id
JOIN choices on answers.choice_id = choices.id
GROUP BY users.id