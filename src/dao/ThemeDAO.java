package dao;

import java.util.List;

import po.Theme;
import util.Page;

public interface ThemeDAO {
	// user本人和admin的操作
	public void deleteTheme(String tid);

	// user的操作
	public void addTheme(Theme theme);

	// admin的操作
	public List<Theme> findThemeList(Page page);

	public int totalCount();
}
