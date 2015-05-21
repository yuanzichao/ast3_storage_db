#include <mysql/mysql.h>
#include "orm/db.h"

#define MAX_BUF_SIZE 1024 // 缓冲区最大字节数

MYSQL *g_conn; // mysql 连接
MYSQL_RES *g_res; // mysql 记录集
MYSQL_ROW g_row; // 字符串数组，mysql 记录行


//函数声明区
int init_mysql();

/***************************************************************************/
/************************* 磁盘操作函数声明区 *********************************/
/***************************************************************************/
int query_disks();						//查询所有硬盘信息
char* get_disk_id(char *diskName);		//获取磁盘ID
int query_disk(char *diskName);		//查询指定硬盘信息
db_disk_info* get_disk_info(char *diskName);	//获取db_disk_info
int insert_disk(db_disk_info *disk_info);		//插入磁盘信息
void update_disk(db_disk_info *disk_info);		//更新磁盘信息
int query_disks_info(char *diskName);			//查询硬盘内目录信息

/***************************************************************************/
/************************* 目录操作函数声明区 *********************************/
/***************************************************************************/
char* get_directory_id(char *dirName, char *diskName);	//获取目录ID
db_directory_info* get_directory_info(char *dirName, char *diskName);		//获取db_directory_info
int insert_directory(db_directory_info *directory_info);	//插入目录信息
void update_directory(db_directory_info *directory_info);	//更新目录信息
int query_directory_info(char *dirName, char *diskName);	//查询目录内文件和目录信息

/***************************************************************************/
/************************* 文件操作函数声明区 *********************************/
/***************************************************************************/
char* get_file_id(char *fileName, char *dirName, char *diskName);	//获取文件ID
db_file_info* get_file_info(char *fileName, char *dirName, char *diskName);	//获取db_file_info
int insert_file(db_file_info *file_info);	//插入文件信息
void update_file(db_file_info *file_info);	//更新文件信息
int query_file_info(char *fileName, char *dirName, char *diskName);		//查询文件信息


void delete();		//删除记录

void print_result();		//打印结果
void print_mysql_error(const char *msg);		//打印最后一次错误
int get_rows();	//获取数据集行数
int get_fields();	//获取数据集列数

void free_result();	//释放结果集
void close_db();		//关闭数据库
