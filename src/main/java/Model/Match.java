package Model;
    public class Match{
        private int idMatch;
        private String link;
        private String teamOne;
        private String imageOne;
        private String teamTwo;
        private String imageTwo;
        private String time;

        public int getIdMatch() { return idMatch; }

        public void setIdMatch(int idMatch) {
            this.idMatch = idMatch;
        }

        public String getLink() {
            return link;
        }

        public void setLink(String link) {
            this.link = link;
        }

        public String getTeamOne() {
            return teamOne;
        }

        public void setTeamOne(String teamOne) {
            this.teamOne = teamOne;
        }

        public String getImageOne() {
            return imageOne;
        }

        public void setImageOne(String imageOne) {
            this.imageOne = imageOne;
        }

        public String getTeamTwo() {
            return teamTwo;
        }

        public void setTeamTwo(String teamTwo) {
            this.teamTwo = teamTwo;
        }

        public String getImageTwo() {
            return imageTwo;
        }

        public void setImageTwo(String imageTwo) {
            this.imageTwo = imageTwo;
        }

        public String getTime() {
            return time;
        }

        public void setTime(String time) {
            this.time = time;
        }
    }
