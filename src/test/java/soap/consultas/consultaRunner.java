package soap.consultas;

import com.intuit.karate.junit5.Karate;

public class consultaRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("consulta").relativeTo(getClass());
    }

}
