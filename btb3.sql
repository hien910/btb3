-- 1. Lấy ra danh sách các nghề nghiệp (job) duy nhất mà người trong bảng không làm trùng lặp.
SELECT distinct(job) FROM Person;

-- 2. Lấy ra danh sách các người có nghề nghiệp (job) là ‘Manager’ và lương (salary) lớn hơn 70000.
SELECT * FROM Person
where job = 'Manager'
having salary > 70000;
select* from Person;

-- 3. Lấy ra người có tuổi (dựa trên ngày sinh) từ 25 đến 35.
SELECT * FROM Person
having round(datediff(curdate(), birthday)/365,0) between 25 and 35;

-- 4. Lấy ra danh sách các quốc gia (country) và tổng số lượng người từng quốc gia.
SELECT count(*) ,country FROM Person group by country;

-- 5. Tính số lượng nam (gender = ‘Male’) và nữ (gender = ‘Female’) trong bảng.
SELECT count(*) ,gender FROM Person group by gender;

-- 6. Lấy ra danh sách người có cùng nghề nghiệp (job) và quốc gia (country).
SELECT count(*), country,job FROM Person group by country, job 

-- 7. Lấy ra danh sách người theo thứ tự giảm dần của ngày sinh (birthday).
SELECT * FROM Person
order by birthday DESC;

-- 8. Lấy ra các nghề nghiệp (job) và tổng số lượng người làm nghề đó, nhưng chỉ hiển thị những nghề nghiệp có ít nhất 3 người làm.
SELECT count(*),  job FROM Person
group by job
having count(*) >3 ;
