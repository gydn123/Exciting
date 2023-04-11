package utils;

public class ListPage {
    public static String pagingStr(int totalCount, int pageSize, int blockPage,
            int pageNum, String searchName, String searchCountry, String order, String reqUrl) {
        String pagingStr = "";
        String style = "class=\"btn btn-primary\"";
        String styleActive = "class=\"btn btn-primary active\"";

        // 단계 3 : 전체 페이지 수 계산
        int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));

        // 단계 4 : '이전 페이지 블록 바로가기' 출력
        int pageTemp = (((pageNum - 1) / blockPage) * blockPage) + 1;
        if (pageTemp != 1) {
            pagingStr += "<a href='" + reqUrl + "?pageNum=1&searchName=" + searchName 
            		+ "&searchCountry=" + searchCountry + "&order=" + order + "'" + style +">[첫 페이지]</a>";
            pagingStr += "<a href='" + reqUrl + "?pageNum=" + (pageTemp - 1)
                         + "&searchName=" + searchName + "&searchCountry=" + searchCountry 
                         + "&order=" + order + "'" + style +">[이전 블록]</a>";
        }

        // 단계 5 : 각 페이지 번호 출력
        int blockCount = 1;
        while (blockCount <= blockPage && pageTemp <= totalPages) {
            if (pageTemp == pageNum) {
                // 현재 페이지는 링크를 걸지 않음
                pagingStr += "<a "+styleActive+">" + pageTemp + "</a>";
            } else {
                pagingStr += "<a href='" + reqUrl + "?pageNum=" + pageTemp + "&searchName=" + searchName 
                		+ "&searchCountry=" + searchCountry + "&order=" + order
                             + "'"+ style +">" + pageTemp + "</a>";
            }
            pageTemp++;
            blockCount++;
        }

        // 단계 6 : '다음 페이지 블록 바로가기' 출력
        if (pageTemp <= totalPages) {
            pagingStr += "<a href='" + reqUrl + "?pageNum=" + pageTemp + "&searchName=" + searchName + "&searchCountry=" + searchCountry
            		+ "&order=" + order + "'"+ style +">[다음 블록]</a>";
//            pagingStr += "&nbsp;";
            pagingStr += "<a href='" + reqUrl + "?pageNum=" + totalPages + "&searchName=" + searchName + "&searchCountry=" + searchCountry
                        + "&order=" + order + "'"+ style +">[마지막 페이지]</a>";
        }

        return pagingStr;
    }
}
