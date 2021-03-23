package nsc.ojt.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class InjectDefaultLogger extends HandlerInterceptorAdapter {
	protected Log logger = LogFactory.getLog(InjectDefaultLogger.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("====================================== START ======================================");
			logger.debug(" Request URI \t: " + request.getRequestURI());
			logger.debug(" Context Path \t: " + request.getContextPath());
		}
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("====================================== END ======================================\n");
		}
	}

}
