package nsc.ojt.common.ui;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class InjectDefaultLogger extends HandlerInterceptorAdapter {
	protected Logger logger = LoggerFactory.getLogger(InjectDefaultLogger.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("====================================== START ======================================");
			logger.debug(" Request URI \t: " + request.getRequestURI());
			logger.debug(" Context Path \t: " + request.getContextPath());
			logger.debug("인터셉터 테스트");
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
