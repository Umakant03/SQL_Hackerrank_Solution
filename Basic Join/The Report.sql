SELECT IF(G.grade >=8,S.Name,NULL) as Name,
       G.grade,
       S.marks
FROM   students S
       JOIN grades G
         ON S.marks BETWEEN G.min_mark AND G.max_mark
ORDER  BY G.grade DESC,
          Name ASC,
          S.marks ASC; 