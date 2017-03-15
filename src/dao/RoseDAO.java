package dao;

import java.util.List;

import po.Rose;
import util.Page;

public interface RoseDAO {
	// 管理员对月季的操作
	public void addRose(Rose rose);// 增加月季

	public void deleteRose(String rid);// 根据rid删除月季

	public void updateRose(Rose rose);// 更新月季

	public List<Rose> findRoseList(Page page);// 查看所有月季

	public Rose findRoseById(String rid);// 根据rid查看月季

	public void importRose();// 导入月季

	public void exportRose();// 导出月季

	public int totalcount();// 所有月季数目

	public void uploadpic(String url);// 上传图片
}
