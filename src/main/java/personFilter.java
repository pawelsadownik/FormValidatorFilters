
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
public class personFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletResponse httpResponse = (HttpServletResponse) response;
        String imie = request.getParameter("firstName");
        String nazwisko = request.getParameter("surName");
        String pesel = request.getParameter("pesel");

        if (imie == null || imie.equals("") ||
                nazwisko == null || nazwisko.equals("") ||
                pesel == null || pesel.equals("")) {

            httpResponse.sendRedirect("fail.jsp");

        }filterChain.doFilter(request, response);
    }
    @Override
    public void destroy() {

    }
}