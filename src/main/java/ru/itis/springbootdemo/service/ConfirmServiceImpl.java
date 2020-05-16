package ru.itis.springbootdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import ru.itis.springbootdemo.models.State;
import ru.itis.springbootdemo.models.User;
import ru.itis.springbootdemo.repositories.UsersRepository;

import java.util.Optional;
import java.util.ResourceBundle;

@Service
public class ConfirmServiceImpl implements ConfirmService {

    @Autowired
    private UsersRepository usersRepository;

//    @Autowired
//    private RestTemplate restTemplate;
//
//    @Autowired
//    private HttpHeaders headers;

    @Override
    public boolean confirm(String confirmCode) {
        Optional<User> userOptional = usersRepository.findByConfirmCode(confirmCode);
        if (userOptional.isPresent()) {
            User user = userOptional.get();
            user.setState(State.CONFIRMED);
            usersRepository.save(user);
//
//            headers.setBasicAuth("goga0092@gmail.com", "80cSQfUHiSJcFtO4OBVVVoZJWlif");
//            String resourseUrl =
//                    "https://@gate.smsaero.ru/v2/sms/send?number=79613376432&text=Ваш аккаунт подтвержден&sign=SMS Aero&channel=DIRECT";
//            HttpEntity<String> entity = new HttpEntity<>(headers);
//            ResponseEntity<String> response = restTemplate.exchange(resourseUrl, HttpMethod.GET, entity, String.class);
//            System.out.println(response.getBody());
//
            return true;
        }
        return false;
    }
}
