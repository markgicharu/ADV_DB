USE [master]
GO

/****** Object:  Database [ElectionManagementSystem]    Script Date: 10/10/2017 20:15:39 ******/
CREATE DATABASE [ElectionManagementSystem] ON  PRIMARY 
( NAME = N'ElectionManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\ElectionManagementSystem.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ElectionManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\ElectionManagementSystem_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ElectionManagementSystem] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ElectionManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ElectionManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET ARITHABORT OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ElectionManagementSystem] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ElectionManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ElectionManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET  ENABLE_BROKER 
GO

ALTER DATABASE [ElectionManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ElectionManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ElectionManagementSystem] SET  READ_WRITE 
GO

ALTER DATABASE [ElectionManagementSystem] SET RECOVERY FULL 
GO

ALTER DATABASE [ElectionManagementSystem] SET  MULTI_USER 
GO

ALTER DATABASE [ElectionManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ElectionManagementSystem] SET DB_CHAINING OFF 
GO

