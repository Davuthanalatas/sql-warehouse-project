-- this code creates tables in the bronze schema




CREATE TABLE [bronze].[crm_cust_info] (
    [cst_id]             INT           NULL,
    [cst_key]            NVARCHAR (50) NULL,
    [cst_firstname]      NVARCHAR (50) NULL,
    [cst_lastname]       NVARCHAR (50) NULL,
    [cst_marital_status] NVARCHAR (50) NULL,
    [cst_gndr]           NVARCHAR (50) NULL,
    [cst_create_date]    DATE          NULL
);

CREATE TABLE [bronze].[crm_prd_info] (
    [prd_id]       INT           NULL,
    [prd_key]      NVARCHAR (50) NULL,
    [prd_nm]       NVARCHAR (50) NULL,
    [prd_cost]     INT           NULL,
    [prd_line]     NVARCHAR (50) NULL,
    [prd_start_dt] DATETIME      NULL,
    [prd_end_dt]   DATETIME      NULL
);

CREATE TABLE [bronze].[crm_sales_detailes] (
    [sls_ord_num]  NVARCHAR (50) NULL,
    [sls_pred_ky]  NVARCHAR (50) NULL,
    [sls_cust_id]  INT           NULL,
    [sls_order_dt] INT           NULL,
    [sls_ship_dt]  INT           NULL,
    [sls_due_dt]   INT           NULL,
    [sls_sales]    INT           NULL,
    [sls_quantity] INT           NULL,
    [sls_price]    INT           NULL
);

CREATE TABLE [bronze].[erp_cust_az12] (
    [cid]   NVARCHAR (50) NULL,
    [bdate] DATE          NULL,
    [gen]   NVARCHAR (50) NULL
);

CREATE TABLE [bronze].[erp_loc_a101] (
    [cid]   NVARCHAR (50) NULL,
    [cntry] NVARCHAR (50) NULL
);

CREATE TABLE [bronze].[erp_px_cat_g1v2] (
    [id]          NVARCHAR (50) NULL,
    [cat]         NVARCHAR (50) NULL,
    [subcat]      NVARCHAR (50) NULL,
    [maintenance] NVARCHAR (50) NULL
);
