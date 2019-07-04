
  select Temp.date, sum(Temp.Clients), sum(Temp.Autres)
  from
  (SELECT      STR_TO_DATE(V.DATE_, '%d-%m-%Y') as 'date', 
              STR_TO_DATE(A.DATE_, '%d-%m-%Y') as  'date2', 
              count(V.id) as 'Clients', 
              count(A.id) as 'Autres'
  FROM ALDI.visite V
  LEFT OUTER JOIN ALDI.visite A on V.id = A.id and A.commune_id = 1 
  where V.magasin_id=20  
  group by    V.date_, A.date_) Temp
  Group by Temp.date
  order by Temp.date asc;
  
  

SELECT  STR_TO_DATE(DATE_, '%d-%m-%Y')  AS DATE   ,count(*)
FROM ALDI.visite v
where magasin_id= 29
group by STR_TO_DATE(DATE_, '%d-%m-%Y') order by 1 asc

SELECT   STR_TO_DATE(DATE_, '%d-%m-%Y')  AS DATE ,  count(*)
FROM ALDI.visite v
where commune_id=1 and magasin_id= 36
group by  STR_TO_DATE(DATE_, '%d-%m-%Y') order by 1 asc
 



SELECT   nom_magasin, date_,count(*) 
FROM ALDI.visite
inner join magasin a on visite.magasin_id = a.id 

where nom_magasin in ('ALDI Brioude','ALDI Montbrison','ALDI Romans-sur-Isère')

group by  nom_magasin,date_
order by 1,2
/*select * from viste */
