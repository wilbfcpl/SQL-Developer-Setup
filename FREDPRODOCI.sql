select patronid, state1, birthdate, name from patron_v2 where state1 is null;
select count(*) from patron_v2 where birthdate is null;
select item,statusdate,editdate,creationdate, createdby, circhistory, cumulativehistory from item_v2 where statusdate<'01-JAN-20' Order by statusdate;
select item_v2.cnfull, chargehistory_v2.itemid, bbibmap_v2.title, chargehistory_v2.chargedate from chargehistory_v2 left join item_v2 on chargehistory_v2.itemid=item_v2.item left join bbibmap_v2 on item_v2.bid = bbibmap_v2.bid where chargehistory_v2.patronid = 11982010862916;
select patronid, name from patron_v2 where name= 'AGUILAR WILL' ;
select userid, alias, lastname, firstname from users_v2  order by userid; 
select patronid, name, birthdate, BTY, actdate from patron_v2 where BTY= 5 and birthdate <'01-JAN-04' and actdate >'01-JAN-19' order by name;
select * from BTY_v2;
select * from students121621;
select students010522.patronid,students010522.last, students010522.first from students010522 inner join patron_v2 on students010522.patronid=patron_v2.patronid ;
select students010522.patronid,students010522.last, students010522.first from students010522 where students010522.patronid not in ( select patronid from patron_v2 where patron_v2.bty=10 );
select patronid, name, bty, status,street1, defaultbranch, regdate,actdate, editdate,regby from patron_v2 where patronid=11982920000829;

