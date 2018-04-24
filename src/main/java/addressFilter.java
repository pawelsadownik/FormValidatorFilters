
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
public class addressFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletResponse httpResponse = (HttpServletResponse) response;

        String miasto= request.getParameter("city");
        String ulica = request.getParameter("street");
        String kodPocztowy= request.getParameter("zipCode");
        String nrBudynku= request.getParameter("houseNumber");
        String nrMieszkania= request.getParameter("localNumber");
        String nrTelefonu= request.getParameter("phoneNumber");

             if (miasto == null || miasto.equals("") ||
                ulica == null || ulica.equals("") ||
                kodPocztowy == null || kodPocztowy.equals("") ||
                nrBudynku == null || nrBudynku.equals("") ||
                nrMieszkania == null || nrMieszkania.equals("") ||
                nrTelefonu == null || nrTelefonu.equals(""))

        {

            httpResponse.sendRedirect("fail.jsp");

        }

        filterChain.doFilter(request, response);
    }
    @Override
    public void destroy() {

    }
}