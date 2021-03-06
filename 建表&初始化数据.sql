
USE [OpenAuthDB]
GO

CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[RootKey] [varchar](100) NOT NULL,
	[RootName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DicDetail]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DicDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Text] [nvarchar](100) NOT NULL,
	[DicId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DICDETAIL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DicIndex]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DicIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[SortNo] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_DICINDEX] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Url] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[Vector] [varchar](255) NOT NULL,
	[SortNo] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModuleElement]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleElement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DomId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[Attr] [varchar](500) NOT NULL,
	[Script] [varchar](500) NOT NULL,
	[Icon] [varchar](255) NOT NULL,
	[Class] [varchar](255) NOT NULL,
	[Remark] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_MODULEELEMENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Org]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Org](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[HotKey] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[ParentName] [varchar](255) NOT NULL,
	[IsLeaf] [bit] NOT NULL,
	[IsAutoExpand] [bit] NOT NULL,
	[IconName] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CustomCode] [varchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
 CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Param]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Param](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PARAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relevance]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Relevance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstId] [int] NOT NULL,
	[SecondId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[OperateTime] [datetime] NOT NULL,
	[OperatorId] [int] NOT NULL,
 CONSTRAINT [PK_RELEVANCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resource]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CascadeId] [varchar](255) NOT NULL,
	[Key] [varchar](200) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[SortNo] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [varchar](64) NOT NULL,
	[OrgId] [int] NOT NULL,
	[OrgCascadeId] [varchar](255) NOT NULL,
	[OrgName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Number] [int] NOT NULL,
	[Price] [decimal](10, 1) NOT NULL,
	[Status] [int] NOT NULL,
	[User] [varchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[OrgId] [int] NOT NULL,
 CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Sex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[BizCode] [varchar](255) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateId] [int] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserCfg]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserCfg](
	[Id] [int] NOT NULL,
	[Theme] [varchar](255) NOT NULL,
	[Skin] [varchar](255) NOT NULL,
	[NavBarStyle] [varchar](255) NOT NULL,
	[TabFocusColor] [varchar](255) NOT NULL,
	[NavTabIndex] [int] NOT NULL,
 CONSTRAINT [PK_USERCFG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserExt]    Script Date: 2016/1/8 12:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserExt](
	[Id] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Phone_] [varchar](255) NOT NULL,
	[Mobile] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Zip] [varchar](255) NOT NULL,
	[Birthday] [varchar](255) NOT NULL,
	[IdCard] [varchar](255) NOT NULL,
	[QQ] [varchar](255) NOT NULL,
	[DynamicField] [varchar](4000) NOT NULL,
	[ByteArrayId] [int] NOT NULL,
	[Remark] [varchar](4000) NOT NULL,
	[Field1] [varchar](255) NOT NULL,
	[Field2] [varchar](255) NOT NULL,
	[Field3] [varchar](255) NOT NULL,
 CONSTRAINT [PK_USEREXT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [ParentId], [Status], [SortNo], [RootKey], [RootName]) VALUES (10, N'0.1', N'机密资源', 0, 0, 0, N'STOCK', N'进出库管理')
GO
INSERT [dbo].[Category] ([Id], [CascadeId], [Name], [ParentId], [Status], [SortNo], [RootKey], [RootName]) VALUES (11, N'0.2', N'角色类型', 0, 0, 0, N'SYSTEM', N'系统')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Module] ON 

GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (1, N'0.4.8', N'模块管理', N'ModuleManager/Index', N' ', 2, 1, 0, N' ', 0, N'基础配置', N' ', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (2, N'0.4', N'基础配置', N' ', N' ', 0, 1, 0, N' ', 1, N'根节点', N' ', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (4, N'0.1.3', N'部门管理', N'OrgManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (5, N'0.1.7', N'角色管理', N'RoleManager/Index', N'', 2, 1, 0, N'', 0, N'基础配置', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (6, N'0.5', N'应用功能', N'/', N'c', 0, 0, 0, N'home', 0, N'根节点', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (7, N'0.2.1', N'进出库管理', N'StockManager/Index', N'ctrl', 6, 0, 0, N'', 0, N'应用功能', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (8, N'0.1.5', N'分类管理', N'CategoryManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (9, N'0.1.2', N'用户管理', N'UserManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
GO
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (10, N'0.1.6', N'资源管理', N'ResourceManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[Module] OFF
GO
SET IDENTITY_INSERT [dbo].[ModuleElement] ON 

GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (11, N'btnAdd', N'添加', N'button', 4, N'', N'add()', N'plus', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (12, N'btnDel', N'删除', N'button', 4, N'', N'del()', N'del', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (19, N'btnAdd', N'添加', N'button', 5, N'', N'add()', N'plus', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (20, N'btnEdit', N'编辑', N'button', 5, N'', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (21, N'btnAccessModule', N'为角色分配模块', N'button', 5, N'', N'assignRoleModule(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (23, N'btnRefresh', N'刷新', N'button', 5, N'', N'refresh()', N'refresh', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (24, N'btnDel', N'删除', N'button', 5, N'', N'del()', N'del', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (25, N'btnAdd', N'添加', N'button', 1, N'', N'add()', N'plus', N'btn btn-green ', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (26, N'btnEdit', N'编辑', N'button', 1, N'', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (27, N'btnAssign', N'为模块分配按钮', N'button', 1, N'', N'assignButton()', N'bar', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (28, N'btnRefresh', N'刷新', N'button', 1, N'', N'refresh()', N'refresh', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (29, N'btnDel', N'删除', N'button', 1, N'', N'del()', N'trash', N'btn-danger', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (31, N'btnAssignElement', N'为角色分配菜单', N'button', 5, N'', N'assignRoleElement(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (33, N'btnDel', N'删除', N'button', 8, N' ', N'del()', N'pencil', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (34, N'btnEdit', N'编辑', N'button', 8, N' ', N'edit()', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (35, N'btnAdd', N'添加', N'button', 9, N'', N'add()', N'plus', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (36, N'btnEdit', N'编辑', N'button', 9, N' ', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (37, N'btnAccessModule', N'为用户分配模块', N'button', 9, N' ', N'openUserModuleAccess(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (38, N'btnAccessRole', N'为用户分配角色', N'button', 9, N' ', N'openUserRoleAccess(this)', N'pencil', N'btn-green ', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (39, N'btnRefresh', N'刷新', N'button', 9, N' ', N'refresh()', N'refresh', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (40, N'btnDel', N'删除', N'button', 9, N' ', N'del()', N'trash', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (41, N'btnAssignElement', N'为用户分配菜单', N'button', 9, N' ', N'openAssignUserElement(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (43, N'btnAdd', N'添加', N'button', 10, N'', N'add()', N'plus', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (44, N'btnEdit', N'编辑', N'button', 10, N' ', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (45, N'btnDel', N'删除', N'button', 10, N' ', N'del()', N'trash', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (46, N'btnAssignReource', N'为用户分配资源', N'button', 9, N' ', N'openUserReourceAccess(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (47, N'btnAssignRes', N'为角色分配资源', N'button', 5, N' ', N'openRoleReourceAccess(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (48, N'btnAdd', N'添加', N'button', 7, N'', N'add()', N'plus', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (50, N'btnDelStock', N'删除', N'button', 7, N' ', N'del()', N'trash', N'btn-red', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (51, N'btnEditStock', N'编辑', N'button', 7, N' ', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (52, N'btnAccessOrg', N'为角色分配部门', N'button', 5, N' ', N'assignRoleOrg(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (53, N'btnOpenUserOrgAccess', N'为用户分配部门权限', N'button', 9, N' ', N'openUserOrgAccess(this)', N'pencil', N'btn-green', N'', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (54, N'btnAdd', N'添加', N'button', 8, N'', N'add()', N'plus', N'btn-primary', N'添加', 0)
GO
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (59, N'btnEdit', N'编辑', N'button', 4, N'', N'edit()', N'pencil', N'btn-primary', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[ModuleElement] OFF
GO
SET IDENTITY_INSERT [dbo].[Org] ON 

GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (1, N'0.1', N'集团总部', N'', 0, N'根节点', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A56501683E57 AS DateTime), 0, 0)
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (2, N'0.1.3', N'研发部', N'', 1, N'集团总部', 0, 1, N'', 0, 0, N'', N'', CAST(0x0000A5EA00D73ED8 AS DateTime), 0, 0)
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (3, N'0.1.2', N'生产部', N'', 1, N'集团总部', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A57D01193D1E AS DateTime), 0, 0)
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (4, N'0.1.2.1', N'生产1组', N'', 3, N'生产部', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A5EA00D6CDAC AS DateTime), 0, 3)
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (6, N'0.1.2.2', N'生产2组', N'', 3, N'生产部', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A5EA00EDABCB AS DateTime), 0, 2)
GO
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (7, N'0.1.3.1', N'研发1组', N'', 2, N'研发部', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A5EE0127ABF2 AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Org] OFF
GO
SET IDENTITY_INSERT [dbo].[Relevance] ON 

GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (50, 21, 10, N'', N'UserElement', 0, CAST(0x0000A5680005BED0 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (51, 21, 11, N'', N'UserElement', 0, CAST(0x0000A5680005BED0 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (68, 1, 4, N'', N'RoleResource', 0, CAST(0x0000A57600F7453C AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (84, 1, 10, N'', N'RoleElement', 0, CAST(0x0000A57D011B4FCC AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (85, 1, 11, N'', N'RoleElement', 0, CAST(0x0000A57D011B4FCC AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (86, 1, 12, N'', N'RoleElement', 0, CAST(0x0000A57D011B4FCC AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (95, 1, 25, N'', N'RoleElement', 0, CAST(0x0000A586010B850D AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (96, 1, 26, N'', N'RoleElement', 0, CAST(0x0000A586010B8510 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (97, 1, 27, N'', N'RoleElement', 0, CAST(0x0000A586010B8511 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (98, 1, 28, N'', N'RoleElement', 0, CAST(0x0000A586010B8511 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (99, 1, 21, N'', N'RoleElement', 0, CAST(0x0000A586010B8F6F AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (100, 1, 23, N'', N'RoleElement', 0, CAST(0x0000A586010B8F72 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (101, 1, 24, N'', N'RoleElement', 0, CAST(0x0000A586010B8F73 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (102, 2, 48, N'', N'RoleElement', 0, CAST(0x0000A58700AC7BC3 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (103, 2, 50, N'', N'RoleElement', 0, CAST(0x0000A58700AC7BCB AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (104, 2, 51, N'', N'RoleElement', 0, CAST(0x0000A58700AC7BCC AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (128, 1, 2, N'', N'UserResource', 0, CAST(0x0000A5EB017688D4 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (129, 5, 2, N'', N'UserResource', 0, CAST(0x0000A5EB0176A5CE AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (134, 1, 2, N'', N'RoleResource', 0, CAST(0x0000A5EB01811722 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (135, 1, 3, N'', N'RoleResource', 0, CAST(0x0000A5EB01811722 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (146, 5, 2, N'', N'UserOrg', 0, CAST(0x0000A5EE00F05801 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (147, 5, 6, N'', N'UserOrg', 0, CAST(0x0000A5EE00F0583F AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (159, 5, 1, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EE00F7E8B0 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (161, 2, 2, N'', N'RoleAccessedOrg', 0, CAST(0x0000A5EE01017D31 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (162, 2, 3, N'', N'RoleAccessedOrg', 0, CAST(0x0000A5EE01017D73 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (163, 2, 1, N'', N'RoleAccessedOrg', 0, CAST(0x0000A5EE01018302 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (164, 2, 2, N'', N'RoleAccessedOrg', 0, CAST(0x0000A5EE01018303 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (165, 2, 3, N'', N'RoleAccessedOrg', 0, CAST(0x0000A5EE01018303 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (169, 5, 1, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EE0103D0D3 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (181, 1, 3, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00C326CF AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (183, 1, 6, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00C33BA2 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (184, 1, 4, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00C33BA8 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (185, 5, 6, N'', N'UserModule', 0, CAST(0x0000A5EF00C3D25A AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (186, 5, 7, N'', N'UserModule', 0, CAST(0x0000A5EF00C3D25B AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (187, 1, 6, N'', N'UserModule', 0, CAST(0x0000A5EF00C3DF8F AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (188, 1, 7, N'', N'UserModule', 0, CAST(0x0000A5EF00C3DF8F AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (189, 5, 3, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00EEDD34 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (190, 5, 6, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00EEDD36 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (191, 5, 4, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00EEDD37 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (192, 1, 1, N'', N'UserAccessedOrg', 0, CAST(0x0000A5EF00F8E126 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (193, 1, 7, N'', N'UserResource', 0, CAST(0x0000A5EF00F8FD20 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (194, 1, 6, N'', N'RoleModule', 0, CAST(0x0000A5EF00FB547B AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (195, 1, 7, N'', N'RoleModule', 0, CAST(0x0000A5EF00FB54BE AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (196, 1, 48, N'', N'RoleElement', 0, CAST(0x0000A5EF00FB5EB4 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (197, 1, 50, N'', N'RoleElement', 0, CAST(0x0000A5EF00FB5EB4 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (198, 1, 51, N'', N'RoleElement', 0, CAST(0x0000A5EF00FB5EB5 AS DateTime), 0)
GO
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (199, 1, 1, N'', N'UserRole', 0, CAST(0x0000A5EF00FB7DAA AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Relevance] OFF
GO
SET IDENTITY_INSERT [dbo].[Resource] ON 

GO
INSERT [dbo].[Resource] ([Id], [CascadeId], [Key], [Name], [ParentId], [Status], [SortNo], [CategoryId], [Description]) VALUES (7, N'', N'ADMIN', N'管理层可见', 0, 0, 0, 10, N'仅管理层可见的内容')
GO
INSERT [dbo].[Resource] ([Id], [CascadeId], [Key], [Name], [ParentId], [Status], [SortNo], [CategoryId], [Description]) VALUES (8, N'', N'DEV', N'开发可见', 0, 0, 0, 10, N'仅开发维护可见的内容')
GO
SET IDENTITY_INSERT [dbo].[Resource] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId], [OrgId], [OrgCascadeId], [OrgName]) VALUES (1, N'管理员', 0, 0, CAST(0x0000A5650171F3DC AS DateTime), N'', 1, N'0.1', N'集团总部')
GO
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId], [OrgId], [OrgCascadeId], [OrgName]) VALUES (2, N'生产部主管', 0, 1, CAST(0x0000A5EA0101E6AE AS DateTime), N'', 3, N'', N'生产部')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

GO
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [User], [Time], [OrgId]) VALUES (2, N'权限管理软件一套', 2, CAST(10000.0 AS Decimal(10, 1)), 0, N'', CAST(0x0000A5EF00000000 AS DateTime), 2)
GO
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [User], [Time], [OrgId]) VALUES (3, N'高级权限管理', 1, CAST(999.0 AS Decimal(10, 1)), 0, N'ADMIN', CAST(0x0000A5870098A8DC AS DateTime), 6)
GO
INSERT [dbo].[Stock] ([Id], [Name], [Number], [Price], [Status], [User], [Time], [OrgId]) VALUES (4, N'打印机', 2, CAST(3333.0 AS Decimal(10, 1)), 1, N'', CAST(0x0000A5EF00000000 AS DateTime), 6)
GO
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CreateId]) VALUES (1, N'admin', N'admin', N'管理员', 0, 1, 0, N'', CAST(0x0000A5EA017C06E1 AS DateTime), 0)
GO
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CreateId]) VALUES (5, N'test', N'test', N'test', 0, 0, 0, N'', CAST(0x0000A58700AD43C9 AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO


/****** Object:  Index [PK_aos_sys_module]    Script Date: 2016/1/8 12:46:35 ******/
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [PK_aos_sys_module] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [CascadeId]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [RootKey]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (' ') FOR [RootName]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT (' ') FOR [Value]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ('0') FOR [Text]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [DicId]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[DicDetail] ADD  DEFAULT (' ') FOR [Description]
GO
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT (' ') FOR [Key]
GO
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[DicIndex] ADD  DEFAULT ('0') FOR [Description]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [CascadeId]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Url]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [HotKey]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [IconName]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [ParentName]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT (' ') FOR [Vector]
GO
ALTER TABLE [dbo].[Module] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [DomId]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Type]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT ((0)) FOR [ModuleId]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Attr]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Script]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Icon]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Class]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT (' ') FOR [Remark]
GO
ALTER TABLE [dbo].[ModuleElement] ADD  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CascadeId]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [HotKey]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [ParentName]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [IsLeaf]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [IsAutoExpand]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [IconName]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [BizCode]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (' ') FOR [CustomCode]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [CreateId]
GO
ALTER TABLE [dbo].[Org] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Value]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Key]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Param] ADD  DEFAULT (' ') FOR [Description]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [FirstId]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [SecondId]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Description]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (' ') FOR [Key]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT (getdate()) FOR [OperateTime]
GO
ALTER TABLE [dbo].[Relevance] ADD  DEFAULT ((0)) FOR [OperatorId]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [CascadeId]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Key]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [SortNo]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Resource] ADD  DEFAULT (' ') FOR [Description]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [CreateId]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [OrgId]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [OrgCascadeId]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (' ') FOR [OrgName]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Number]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (' ') FOR [User]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT ((0)) FOR [OrgId]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Account]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Password]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [Name]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (' ') FOR [BizCode]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [CreateId]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT ((0)) FOR [Id]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [Theme]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [Skin]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [NavBarStyle]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT (' ') FOR [TabFocusColor]
GO
ALTER TABLE [dbo].[UserCfg] ADD  DEFAULT ((0)) FOR [NavTabIndex]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Email]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Phone_]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Mobile]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Address]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Zip]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Birthday]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [IdCard]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [QQ]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [DynamicField]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT ((0)) FOR [ByteArrayId]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Remark]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field1]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field2]
GO
ALTER TABLE [dbo].[UserExt] ADD  DEFAULT (' ') FOR [Field3]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类所属科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类所属科目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'RootName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属字典ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'DicId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DicIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页面URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'矢量图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'Vector'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Module'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOM ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'DomId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素附加属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Attr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素调用脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Script'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元素样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块元素表(需要权限控制的按钮)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModuleElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'HotKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'ParentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否叶子节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IsAutoExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点图标文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'IconName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务对照码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'BizCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义扩展码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CustomCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Org'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键值参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Param'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'FirstId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二个表主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'SecondId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance', @level2type=N'COLUMN',@level2name=N'OperatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'多对多关系集中映射' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Relevance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'SortNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Resource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门节点语义ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgCascadeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'OrgName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库/入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'Time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入库信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户界面主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Theme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户界面皮肤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'Skin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航条按钮风格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'NavBarStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tab高亮颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'TabFocusColor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航缺省活动页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg', @level2type=N'COLUMN',@level2name=N'NavTabIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserCfg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Phone_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'IdCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态扩展字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'DynamicField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像流文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'ByteArrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'静态扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt', @level2type=N'COLUMN',@level2name=N'Field3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户扩展信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExt'
GO
USE [master]
GO
ALTER DATABASE [OpenAuthDB] SET  READ_WRITE 
GO
