USE AdventureWorks2019
GO

--Se requiere el detalle de orden de compra, cantidad recibida, cantidad rechazada, cantidad almacenada, el 'status' y el número de revisión

SELECT ppo.PurchaseOrderID, ppo.ReceivedQty AS Cantidad_recibida, ppo.RejectedQty AS Cantidad_rechazada, pph.Status, pph.RevisionNumber AS Revision_numero
FROM Purchasing.PurchaseOrderDetail ppo
INNER JOIN Purchasing.PurchaseOrderHeader pph
ON ppo.PurchaseOrderID = pph.PurchaseOrderID