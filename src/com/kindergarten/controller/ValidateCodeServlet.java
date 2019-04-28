package com.kindergarten.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 专门生成验证码的servlet
 */
@WebServlet("/ValidateCodeServlet")
public class ValidateCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private char code[] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
			'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
			'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M',
			'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '2',
			'3', '4', '5', '6', '7', '8', '9' };
	private static final int WIDTH = 50;
	private static final int HEIGHT = 20;
	private static final int LENGTH = 4;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 璁剧疆鍝嶅簲鎶ュご淇℃伅
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		// 璁剧疆鍝嶅簲鐨凪IME绫诲瀷
		response.setContentType("image/jpeg");

		BufferedImage image = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);
		Font mFont = new Font("Arial", Font.TRUETYPE_FONT, 18);
		Graphics g = image.getGraphics();
		Random rd = new Random();

		// 璁剧疆鑳屾櫙棰滆壊
		g.setColor(new Color(rd.nextInt(55) + 200, rd.nextInt(55) + 200, rd
				.nextInt(55) + 200));
		g.fillRect(0, 0, WIDTH, HEIGHT);

		// 璁剧疆瀛椾綋
		g.setFont(mFont);

		// 鐢昏竟妗�
		g.setColor(Color.black);
		g.drawRect(0, 0, WIDTH - 1, HEIGHT - 1);

		// 闅忔満浜х敓鐨勯獙璇佺爜
		String result = "";
		for (int i = 0; i < LENGTH; ++i) {
			result += code[rd.nextInt(code.length)];
		}
		HttpSession se = request.getSession();//4we9
		se.setAttribute("code", result);

		// 鐢婚獙璇佺爜
		for (int i = 0; i < result.length(); i++) {
			g.setColor(new Color(rd.nextInt(200), rd.nextInt(200), rd
					.nextInt(200)));
			g.drawString(result.charAt(i) + "", 12 * i + 1, 16);
		}

		// 闅忔満浜х敓2涓共鎵扮嚎
		for (int i = 0; i < 2; i++) {
			g.setColor(new Color(rd.nextInt(200), rd.nextInt(200), rd
					.nextInt(200)));
			int x1 = rd.nextInt(WIDTH);
			int x2 = rd.nextInt(WIDTH);
			int y1 = rd.nextInt(HEIGHT);
			int y2 = rd.nextInt(HEIGHT);
			g.drawLine(x1, y1, x2, y2);
		}

		// 閲婃斁鍥惧舰璧勬簮
		g.dispose();
		try {
			OutputStream os = response.getOutputStream();

			// 杈撳嚭鍥惧儚鍒伴〉闈�
			ImageIO.write(image, "JPEG", os);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
