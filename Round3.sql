1.

SELECT 
    c.FirstName || ' ' || c.LastName AS FullName, 
    a.City, 
    s.Amount 
FROM 
    Customer c 
JOIN 
    Sales s ON c.Id = s.CustomerID 
JOIN 
    Address a ON a.ID = s.CityID 
WHERE 
    c.MotherIDNumber IN ( 
        SELECT IDNumber 
        FROM Customer 
        WHERE EyeColor = 'Brown' 
    );

2.

SELECT  
    u.FirstName,  
    u.LastName 
FROM  
    "Order" o 
    JOIN Users u ON o.UserID = u.ID 
GROUP BY  
    u.FirstName, u.LastName 
HAVING  
    COUNT(o.CourseID) >= 3; 

3.

SELECT   
    SUM(p.Amount) AS Amount  
FROM   
    Payments p  
INNER JOIN  
    Clients c ON p.ClientId = c.Id  
INNER JOIN  
    Addresss a ON c.Id = a.ClientId  
WHERE   
    c.Name LIKE '%iro' 