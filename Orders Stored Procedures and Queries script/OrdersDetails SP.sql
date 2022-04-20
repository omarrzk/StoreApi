-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_GetAllOrdersWithDetails 
	-- Add the parameters for the stored procedure here
	@isActive as bit 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  Select u.Id as UserID,u.UserName,o.PurchaseOrderID,o.OrderDate,o.OrderTotal,o.GrossTotal,o.InvoiceNumber,o.PaymentStatus,
		 od.OrderDetailID,p.Id as ProductId,p.ProductName,od.TransactionDate,od.Amount,od.Quantity,od.Status,od.IsActive,od.Remarks
  FROM [Order] o 
  INNER JOIN OrderDetail od ON o.PurchaseOrderID=od.OrdersPurchaseOrderID
  INNER JOIN AspNetUsers u ON o.UserId=u.Id
  INNER JOIN Products p ON p.Id=od.ProductId
  WHERE o.IsActive=@isActive;

END
GO
