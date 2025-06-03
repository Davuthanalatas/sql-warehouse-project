-- Drop and recreate [bronze].[crm_cust_info]
IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;

CREATE TABLE [bronze].[crm_cust_info] (
    [cst_id]             INT           NULL,
    [cst_key]            NVARCHAR (50) NULL,
    [cst_firstname]      NVARCHAR (50) NULL,
    [cst_lastname]       NVARCHAR (50) NULL,
    [cst_marital_status] NVARCHAR (50) NULL,
    [cst_gndr]           NVARCHAR (50) NULL,
    [cst_create_date]    DATE          NULL
);

-- Drop and recreate [bronze].[crm_prd_info]
IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;

CREATE TABLE [bronze].[crm_prd_info] (
    [prd_id]       INT           NULL,
    [prd_key]      NVARCHAR (50) NULL,
    [prd_nm]       NVARCHAR (50) NULL,
    [prd_cost]     INT           NULL,
    [prd_line]     NVARCHAR (50) NULL,
    [prd_start_dt] DATETIME      NULL,
    [prd_end_dt]   DATETIME      NULL
);

-- Drop and recreate [bronze].[crm_sales_detailes]
IF OBJECT_ID('bronze.crm_sales_detailes', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_detailes;

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

-- Drop and recreate [bronze].[erp_cust_az12]
IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;

CREATE TABLE [bronze].[erp_cust_az12] (
    [cid]   NVARCHAR (50) NULL,
    [bdate] DATE          NULL,
    [gen]   NVARCHAR (50) NULL
);

-- Drop and recreate [bronze].[erp_loc_a101]
IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;

CREATE TABLE [bronze].[erp_loc_a101] (
    [cid]   NVARCHAR (50) NULL,
    [cntry] NVARCHAR (50) NULL
);

-- Drop and recreate [bronze].[erp_px_cat_g1v2]
IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;

CREATE TABLE [bronze].[erp_px_cat_g1v2] (
    [id]          NVARCHAR (50) NULL,
    [cat]         NVARCHAR (50) NULL,
    [subcat]      NVARCHAR (50) NULL,
    [maintenance] NVARCHAR (50) NULL
);
