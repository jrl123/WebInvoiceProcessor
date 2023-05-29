/****** 1.ORDENES PENDIENTES POR FACTURAR ******/
USE VISION_WEB

SELECT top 20 [ID],
       [ID_ECOMMERCE],
       Isnull([TO_INVOICE], 0) AS [TO_INVOICE],
       RECEIVED_DATE,
       PAYMENT_METHOD,
       PAYMENT_METHOD_TITLE,
       CODE_TRANSACTION,
       CUSTOMER_NAME,
       CUSTOMER_LAST_NAME,
       IDENTIFICATION_CARD,
       ADDRESS,
       TOTAL,
       TOTAL_TAX,
       DELIVERY_COST,
       NOTA_CLIENTE,
       TOTAL_PRODUCT
-- ,*
FROM   [VISION_WEB].[dbo].GP_EC_ORDER_HEADER oh
WHERE  IS_DISPATCHED = 1
       --or 
     --  AND id IN ( 7737, 7743, 7740, 7732 )
ORDER  BY RECEIVED_DATE DESC 
