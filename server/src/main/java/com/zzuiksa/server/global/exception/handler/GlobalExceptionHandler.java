package com.zzuiksa.server.global.exception.handler;

import com.zzuiksa.server.global.api.ErrorResponse;
import com.zzuiksa.server.global.exception.CustomException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(CustomException.class)
    public ResponseEntity<ErrorResponse> handleCustomException(CustomException ex) {
        return new ResponseEntity<>(new ErrorResponse(ex.getErrorCode(), ex.getMessage()), ex.getStatus());
    }
}
