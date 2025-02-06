package sprintboot.api;


import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;
import sprintboot.api.controller.PersonController;
import sprintboot.api.service.PersonService;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = PersonController.class)
public class PersonControllerTest {
    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private PersonService personService;

    @Test
    public void getPersonsTest() throws Exception {
    mockMvc.perform(get("/persons")).andExpect(status().isOk());
}

}
