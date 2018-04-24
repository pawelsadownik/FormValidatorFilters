
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

@WebFilter
public class loanParametersFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletResponse httpResponse = (HttpServletResponse) response;

        String kwota = request.getParameter("amount");
        String iloscRat = request.getParameter("installmentCount");
        if (kwota == null || kwota.equals("") || iloscRat == null || iloscRat.equals("")) {

            httpResponse.sendRedirect("fail.jsp");

        }



        filterChain.doFilter(request, response);


    }
    @Override
    public void destroy() {

    }
}