package cn.keking.service;

import cn.keking.model.FileAttribute;
import org.springframework.ui.Model;

/**
 * Created by kl on 2018/1/17.
 * Content :
 */
public interface FilePreview {

    String FLV_FILE_PREVIEW_PAGE = "flv";
    String PDF_FILE_PREVIEW_PAGE = "pdf";
    String DING_PDF_FILE_PREVIEW_PAGE = "ddPdf"; // 钉钉端pdf预览
    String COMPRESS_FILE_PREVIEW_PAGE = "compress";
    String MEDIA_FILE_PREVIEW_PAGE = "media";
    String PICTURE_FILE_PREVIEW_PAGE = "picture";
    String TIFF_FILE_PREVIEW_PAGE = "tiff";
    String OFFICE_PICTURE_FILE_PREVIEW_PAGE = "officePicture";
    String TXT_FILE_PREVIEW_PAGE = "txt";
    String CODE_FILE_PREVIEW_PAGE = "code";
    String EXEL_FILE_PREVIEW_PAGE = "html";
    String XML_FILE_PREVIEW_PAGE = "xml";
    String MARKDOWN_FILE_PREVIEW_PAGE = "markdown";
    String NOT_SUPPORTED_FILE_PAGE = "fileNotSupported";

    String filePreviewHandle(String url, Model model, FileAttribute fileAttribute);
}
