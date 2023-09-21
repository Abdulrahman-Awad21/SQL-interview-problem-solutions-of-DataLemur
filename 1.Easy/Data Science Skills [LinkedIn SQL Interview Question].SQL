SELECT "Tableau"."id2" "candidate_id"

  FROM (SELECT "Python"."id1" "id2"
  
    FROM (SELECT c.candidate_id "id1"  
    FROM candidates c
    WHERE c.skill = 'Python') AS "Python"
  LEFT JOIN candidates cc on "Python"."id1" = cc.candidate_id
  
  WHERE cc.skill = 'Tableau') "Tableau"
LEFT JOIN candidates ccc on "Tableau"."id2" = ccc.candidate_id

WHERE ccc.skill = 'PostgreSQL'

