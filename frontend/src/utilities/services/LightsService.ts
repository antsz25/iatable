import axios from "axios"


export default {
    async $GetDiagnosticoFromLightId(lightId: string[]) {
        return axios.get<string>(`http://localhost:3000/prolog/${lightId}`);
    }
}