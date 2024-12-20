SELECT COUNT(CASE WHEN V.device_type <> 'tablet' AND V.device_type <> 'phone' THEN V.view_time END) "laptop_views"
,COUNT(CASE WHEN V.device_type = 'tablet' or V.device_type = 'phone' then V.view_time END) "mobile_views"
FROM viewership V