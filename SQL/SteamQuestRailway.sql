-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: switchyard.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `emoji` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `css_class` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'science','#2c6e49','?','Impress her with nature’s wonders ?.','category-science'),(2,'tech','#0077b6','?','Show her the magic of innovation ⚡.','category-tech'),(3,'engineering','#7209b7','⚙️','Win her heart with your clever builds ?️.','category-engineering'),(4,'arts','#f4a261','?','Paint her a masterpiece to win her heart ?.','category-arts'),(5,'math','#d62828','➗','Unlock secrets with the power of logic ?.','category-math');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `xp` int DEFAULT '0',
  `level` int DEFAULT '1',
  `completed` int DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (38,1,0,1,0,'2025-11-22 16:39:22'),(39,1,0,1,0,'2025-11-22 16:40:03'),(40,1,0,1,0,'2025-11-22 16:40:05'),(41,1,0,1,0,'2025-11-22 16:53:20'),(42,1,70,1,7,'2025-11-22 16:56:00'),(43,1,70,1,7,'2025-11-22 17:04:39'),(44,1,60,1,6,'2025-11-22 17:11:30'),(45,2,50,1,5,'2025-11-22 17:14:20'),(46,2,40,1,4,'2025-11-22 17:16:16'),(47,1,30,1,3,'2025-11-22 17:18:13'),(48,2,20,1,2,'2025-11-22 17:20:43'),(49,2,40,1,4,'2025-11-22 17:44:56'),(50,2,30,1,3,'2025-11-22 17:56:04'),(51,2,50,1,5,'2025-11-22 18:37:52'),(52,2,0,1,0,'2025-11-22 18:50:33'),(53,2,30,1,3,'2025-11-22 18:51:34'),(54,2,50,1,5,'2025-11-22 19:39:39'),(55,2,80,1,8,'2025-11-22 20:46:22'),(56,3,160,2,16,'2025-11-22 23:13:31'),(57,3,20,1,8,'2025-11-23 00:36:15'),(58,2,30,1,3,'2025-11-26 12:40:19'),(59,2,60,1,9,'2025-11-26 12:48:54'),(60,2,50,1,8,'2025-11-26 12:53:21'),(61,2,20,1,2,'2025-11-26 12:55:05'),(62,1,65,1,8,'2025-11-26 13:58:52'),(63,2,30,1,3,'2025-11-28 11:47:22'),(64,2,50,1,5,'2025-11-28 18:38:29'),(65,2,10,1,7,'2025-11-28 19:16:07'),(66,5,45,1,9,'2025-11-28 19:19:50');
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` text NOT NULL,
  `optionA` text NOT NULL,
  `optionB` text NOT NULL,
  `optionC` text NOT NULL,
  `optionD` text NOT NULL,
  `answer` char(1) NOT NULL,
  `hint` text,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Which process allows plants to make their own food?','Photosynthesis','Respiration','Fermentation','Transpiration','A','It uses sunlight to convert CO₂ and water into sugar.',NULL),(2,1,'Water turning into vapor is called?','Condensation','Evaporation','Freezing','Precipitation','B','Liquid to gas.',NULL),(3,1,'Which organ pumps blood through the human body?','Brain','Lungs','Heart','Liver','C','It beats nonstop!',NULL),(4,1,'The smallest unit of life is the ___?','Molecule','Atom','Cell','Organ','C','All living things are made of these.',NULL),(5,1,'What gas do humans exhale when they breathe out?','Oxygen','Nitrogen','Carbon dioxide','Hydrogen','C','Plants take it in during photosynthesis.',NULL),(6,1,'The Earth revolves around the ___?','Moon','Sun','Mars','Jupiter','B','It\'s the center of our solar system.',NULL),(7,1,'Which of these is a solid at room temperature?','Oxygen','Water','Ice','Steam','C','Frozen water.',NULL),(8,1,'Humans have how many senses traditionally?','4','5','6','7','B','Sight, hearing, touch, taste, smell.',NULL),(9,1,'Which planet is known as the Red Planet?','Venus','Mars','Jupiter','Mercury','B','Named after the Roman god of war.',NULL),(10,1,'Which of these materials is attracted to a magnet?','Plastic','Wood','Iron','Glass','C','It’s metallic and used in steel.',NULL),(11,1,'Which subatomic particle has a negative charge?','Proton','Neutron','Electron','Nucleus','C','It orbits around the nucleus.',NULL),(12,1,'Which part of the cell contains genetic material?','Cytoplasm','Nucleus','Mitochondria','Ribosome','B','It’s the control center.',NULL),(13,1,'What is the chemical symbol for Sodium?','S','So','Na','Sn','C','From Latin \'Natrium\'.',NULL),(14,1,'Sound travels fastest through which medium?','Air','Water','Steel','Vacuum','C','Particles are packed tightly.',NULL),(15,1,'What is Newton’s Third Law?','Force equals mass times acceleration','Every action has an equal and opposite reaction','Objects at rest stay at rest','Gravity pulls objects toward Earth','B','Action–reaction pairs.',NULL),(16,1,'Which organelle is called the powerhouse of the cell?','Ribosome','Mitochondria','Nucleus','Chloroplast','B','Generates ATP.',NULL),(17,1,'What type of energy is stored in a stretched rubber band?','Kinetic','Thermal','Chemical','Potential','D','Stored energy.',NULL),(18,1,'Which layer of the atmosphere contains the ozone layer?','Troposphere','Stratosphere','Mesosphere','Thermosphere','B','Second layer from Earth’s surface.',NULL),(19,1,'The pH of pure water at room temperature is approximately?','5','6','7','8','C','Neutral solution.',NULL),(20,1,'Which gas makes up most of Earth’s atmosphere?','Oxygen','Nitrogen','Carbon dioxide','Hydrogen','B','About 78%.',NULL),(21,1,'Which law of thermodynamics states that energy cannot be created or destroyed?','First','Second','Third','Zeroth','A','Conservation of energy.',NULL),(22,1,'What is the main product of the Calvin Cycle in photosynthesis?','Glucose','ATP','Oxygen','NADPH','A','Sugar molecule.',NULL),(23,1,'Which scientist proposed the model of the atom with electrons orbiting the nucleus?','Rutherford','Bohr','Thomson','Dalton','B','Planetary model.',NULL),(24,1,'What is the acceleration due to gravity on Earth’s surface?','8.9 m/s²','9.8 m/s²','10.8 m/s²','12 m/s²','B','Standard gravitational acceleration.',NULL),(25,1,'Which element has the highest electronegativity?','Fluorine','Oxygen','Chlorine','Nitrogen','A','Top-right of the periodic table.',NULL),(26,1,'Which part of the brain controls balance and coordination?','Cerebrum','Cerebellum','Medulla','Thalamus','B','Located at the back of the brain.',NULL),(27,1,'What is the SI unit of electric resistance?','Ohm','Ampere','Volt','Watt','A','Symbol Ω.',NULL),(28,1,'Which particle is exchanged in nuclear fusion reactions within the Sun?','Neutron','Proton','Electron','Positron','B','Hydrogen nuclei combine.',NULL),(29,1,'What type of chemical reaction absorbs heat from its surroundings?','Exothermic','Endothermic','Combustion','Oxidation','B','Energy input required.',NULL),(30,1,'Which molecule carries genetic information in most living organisms?','RNA','DNA','Protein','Lipid','B','Double-stranded helix.',NULL),(31,2,'Binary 1010₂ equals what in decimal?','8','9','10','12','D','8 + 2 = 10 (decimal).',NULL),(32,2,'Which tag creates a link in HTML?','<a>','<link>','<href>','<url>','A','It supports the href attribute.',NULL),(33,2,'CSS controls the page’s…','Structure','Behavior','Style','Database','C','Cascading Style Sheets.',NULL),(34,2,'Which of these is an input device?','Monitor','Printer','Keyboard','Projector','C','Used to type.',NULL),(35,2,'What does URL stand for?','Uniform Resource Locator','Universal Router Link','Unified Route List','User Remote Link','A','It locates resources on the web.',NULL),(36,2,'Which language runs in the browser by default?','Python','JavaScript','C#','Java','B','Used with DOM.',NULL),(37,2,'What is the purpose of an operating system?','Run hardware & apps','Design websites','Compile code only','Print documents only','A','It manages resources.',NULL),(38,2,'Which protocol secures websites (padlock icon)?','HTTP','HTTPS','FTP','SMTP','B','TLS/SSL on top of HTTP.',NULL),(39,2,'What is a ‘bug’ in software?','Feature','Error','Compiler','Library','B','It causes unintended behavior.',NULL),(40,2,'Which file often contains website styles?','index.html','style.css','main.js','package.json','B','Cascading Style Sheets.',NULL),(41,2,'In networking, what does IP stand for?','Internal Protocol','Internet Protocol','Interface Port','Interlinked Path','B','Addresses devices on a network.',NULL),(42,2,'Which data structure is First-In-First-Out?','Stack','Queue','Tree','Graph','B','Think of a line.',NULL),(43,2,'Which HTTP method is commonly used to submit form data?','GET','POST','PUT','DELETE','B','Used when sending data in the body.',NULL),(44,2,'What does ‘responsive design’ primarily adapt to?','CPU speed','Screen size','RAM','Battery level','B','Mobile, tablet, desktop.',NULL),(45,2,'Which statement declares a constant in JavaScript?','let','const','var','static','B','Value cannot be reassigned.',NULL),(46,2,'A database table row is also called a…','Field','Record','Schema','Index','B','Columns define fields; rows are this.',NULL),(47,2,'Which is a version control system?','Docker','Git','Node.js','NPM','B','Commit, branch, merge.',NULL),(48,2,'Which CSS layout is best for two-dimensional grids?','Flexbox','Float','Grid','Inline-block','C','Rows and columns.',NULL),(49,2,'What does API stand for?','Application Programming Interface','Advanced Protocol Integration','App Process Instruction','Automated Program Index','A','It exposes functionality.',NULL),(50,2,'Which storage is typically non-volatile?','RAM','Cache','SSD','Registers','C','It keeps data after power off.',NULL),(51,2,'Time complexity of quicksort on average is…','O(n)','O(n log n)','O(n²)','O(log n)','B','Divide-and-conquer.',NULL),(52,2,'Which database property ensures all-or-nothing transactions?','Isolation','Durability','Atomicity','Consistency','C','The ‘A’ in ACID.',NULL),(53,2,'Which protocol is used to resolve domain names to IPs?','DHCP','DNS','SNMP','IMAP','B','Converts names to numbers.',NULL),(54,2,'In OOP, which principle hides internal details?','Inheritance','Polymorphism','Encapsulation','Abstraction','C','Protects object state.',NULL),(55,2,'A hash function should ideally be…','Reversible','Collision-resistant','Slow and predictable','Stateful','B','Hard to find two inputs with same output.',NULL),(56,2,'What does CORS primarily control?','Cross-origin requests','Cookie storage','Session hijacking','DNS caching','A','Browser enforces it via headers.',NULL),(57,2,'Which NoSQL type stores data as key–value pairs?','Graph DB','Document DB','Column store','Key–value store','D','Fast lookups by key.',NULL),(58,2,'Public-key cryptography relies on…','Shared secret','Same key for both parties','Key pair','No keys','C','Public + private.',NULL),(59,2,'Which HTTP status code indicates a resource was not found?','200','201','301','404','D','Common client error.',NULL),(60,2,'Which attack injects scripts into trusted sites?','Phishing','XSS','MITM','DoS','B','Cross-Site Scripting.',NULL),(61,3,'Which shape is common for strong beams in construction?','I-beam','Round bar','Thin plate','Wire','A','Maximizes bending stiffness.',NULL),(62,3,'Bolts and screws are examples of…','Welds','Adhesives','Fasteners','Rivets','C','Temporary or semi-permanent.',NULL),(63,3,'Which unit measures force?','Newton','Joule','Pascal','Watt','A','F = m·a.',NULL),(64,3,'In CAD, what does ‘D’ stand for?','Drawing','Design','Diagram','Detail','B','Computer-Aided ____.',NULL),(65,3,'Which bridge type uses cables and towers?','Beam','Arch','Suspension','Cantilever','C','Think Golden Gate.',NULL),(66,3,'What’s the purpose of a gear train?','Store electricity','Change speed/torque','Cool engines','Measure mass','B','Mechanical advantage.',NULL),(67,3,'Which material is typically the best electrical conductor?','Wood','Copper','Plastic','Glass','B','Used in wiring.',NULL),(68,3,'Which tool measures length precisely (mm scale)?','Caliper','Hammer','Wrench','Chisel','A','Vernier or digital.',NULL),(69,3,'Which is a permanent joining method?','Welding','Bolting','Clamping','Threading','A','Fuses materials.',NULL),(70,3,'What do safety goggles primarily protect?','Hands','Eyes','Ears','Feet','B','Debris, dust, sparks.',NULL),(71,3,'Which stress is force divided by area?','Shear strain','Stress (σ)','Deflection','Toughness','B','Units: Pa = N/m².',NULL),(72,3,'What does CAD/CAM integration improve?','Only marketing','Manufacturing throughput','Battery life','Fuel economy','B','Design-to-production flow.',NULL),(73,3,'Which beam experiences maximum bending moment at the center under uniform load?','Cantilever','Simply supported','Fixed-fixed','No beam','B','Supports at both ends.',NULL),(74,3,'Which diagram shows the flow of a process?','Gantt chart','Flowchart','P&ID','Ishikawa','B','Blocks and arrows.',NULL),(75,3,'Which material property resists scratching?','Hardness','Ductility','Elasticity','Creep','A','Mohs scale.',NULL),(76,3,'A PID controller uses…','Proportional–Integral–Derivative terms','Power–Inertia–Drive','Pulse–Interrupt–Delay','Position–Impulse–Drag','A','Tuning improves stability.',NULL),(77,3,'Which failure occurs from repeated cyclic loading?','Brittle fracture','Creep','Corrosion','Fatigue failure','D','Cracks grow over cycles.',NULL),(78,3,'In DC circuits, V = I·R is known as…','Faraday’s Law','Ohm’s Law','Kirchhoff’s Law','Ampere’s Law','B','Relates voltage, current, resistance.',NULL),(79,3,'Which machining process removes material with a rotating cutting tool?','Turning','Milling','Drilling','Broaching','B','Cutter rotates; workpiece fixed.',NULL),(80,3,'What does FEA stand for?','Fast Energy Analysis','Finite Element Analysis','Flow Engineering Algorithm','Force Equilibrium Approx.','B','Numerical method for structures.',NULL),(81,3,'Which criterion predicts ductile failure using maximum shear stress?','von Mises','Mohr–Coulomb','Tresca','Griffith','C','Also called maximum shear stress theory.',NULL),(82,3,'Reynolds number primarily compares…','Inertial to viscous forces','Pressure to temperature','Lift to drag','Momentum to energy','A','Laminar vs turbulent flow indicator.',NULL),(83,3,'Which manufacturing process uses a mold cavity and molten metal?','Casting','Forging','Extrusion','Rolling','A','Solidifies into shape.',NULL),(84,3,'Buckling in columns depends strongly on…','Yield strength only','Length and end conditions','Thermal expansion','Poisson’s ratio alone','B','Euler’s critical load.',NULL),(85,3,'Which diagram shows energy losses in a system (e.g., power plant)?','Sankey diagram','Bode plot','Nyquist plot','Phase diagram','A','Flow widths proportional to quantity.',NULL),(86,3,'In control systems, a negative feedback loop typically…','Destabilizes response','Reduces error and increases stability','Always slows systems dangerously','Is never used','B','Compares output to reference.',NULL),(87,3,'Composite materials combine…','Metals only','Polymers only','Two+ distinct phases','Gases and liquids','C','Matrix + reinforcement.',NULL),(88,3,'Which law states that the algebraic sum of currents at a node is zero?','Faraday’s Law','Kirchhoff’s Current Law','Lenz’s Law','Coulomb’s Law','B','KCL.',NULL),(89,3,'For a simply supported beam, the deflection shape under uniform load is…','Linear','Parabolic','Sinusoidal','Piecewise constant','B','Related to double integration of load.',NULL),(90,3,'Heat exchanger effectiveness increases generally with…','Lower surface area','Counterflow arrangement','Lower temperature difference','Higher fouling','B','Better temperature gradient.',NULL),(91,4,'Mixing blue and yellow paint produces…','Purple','Green','Orange','Brown','B','Secondary color on the RYB wheel.',NULL),(92,4,'Which term means ‘arrangement of elements’ in art?','Texture','Composition','Value','Hue','B','Placement of shapes and lines.',NULL),(93,4,'Warm colors typically include…','Blue, green','Purple, blue','Red, orange','Green, cyan','C','Think sun and fire.',NULL),(94,4,'Which tool is commonly used for drawing fine lines?','Palette knife','Brush size 12','Fine liner pen','Sponge','C','Ink outlines.',NULL),(95,4,'Which painting is by Leonardo da Vinci?','Starry Night','The Persistence of Memory','Mona Lisa','The Scream','C','Renaissance portrait.','images/monaLisa.jpg'),(96,4,'Complementary color of red on RYB wheel is…','Green','Blue','Yellow','Violet','A','Opposite on the wheel.','images/ryb.jpg'),(97,4,'Which art movement is Claude Monet associated with?','Cubism','Impressionism','Surrealism','Baroque','B','Light and quick brushstrokes.',NULL),(98,4,'The ‘rule of thirds’ helps improve…','Audio quality','Perspective','Focus and balance','File size','C','Place subjects near grid intersections.',NULL),(99,4,'Which medium is typically used on canvas?','Watercolor only','Oil or acrylic','Charcoal only','Pastel only','B','Thicker paint film.',NULL),(100,4,'A quick preliminary drawing is called a…','Glaze','Sketch','Impasto','Collage','B','Loose outline.',NULL),(101,4,'Which painter is famous for this painting:‘Starry Night’?','Vincent van Gogh','Pablo Picasso','Edvard Munch','Rembrandt','A','Dutch Post-Impressionist.','images/starryNight.jpg'),(102,4,'Cubism is best described as…','Dreamlike scenes','Geometric fragmentation','Realistic portraits','Religious iconography','B','Multiple viewpoints.',NULL),(103,4,'In perspective drawing, parallel lines appear to meet at the…','Horizon line','Vanishing point','Picture plane','Orthogonal','B','Depth illusion anchor.',NULL),(104,4,'Which pair are complementary colors in RGB (light)?','Red–Cyan','Blue–Yellow','Green–Magenta','A and C','D','Additive complements come in pairs.','images/rgb.jpg'),(105,4,'‘Chiaroscuro’ refers to…','Heavy texture','Strong light–dark contrast','Bright saturated colors','Ink wash','B','Modeling form with light/shadow.',NULL),(106,4,'Which artist is known for Cubism with Georges Braque?','Paul Cézanne','Pablo Picasso','Henri Matisse','Paul Klee','B','Spanish modernist.',NULL),(107,4,'A monochromatic color scheme uses…','Opposites on the wheel','One hue with tints/shades','Three spaced hues','Random hues','B','Lightness variations of one color.',NULL),(108,4,'Which artwork depicts melting clocks?','Guernica','The Persistence of Memory','Girl with a Pearl Earring','The Night Watch','B','By Salvador Dalí.','images/meltingClocks.jpg'),(109,4,'Which period features dramatic lighting and intense realism?','Baroque','Rococo','Neoclassical','Pop Art','A','Caravaggio’s era.',NULL),(110,4,'‘Impasto’ describes…','Thin transparent wash','Thick textured paint','Scratch removal','Collage of paper','B','Visible brush or knife marks.',NULL),(111,4,'Who painted ‘Guernica’ (1937)?','Picasso','Matisse','Kandinsky','Rothko','A','Large black-and-white anti-war mural.','images/guernica.jpg'),(112,4,'Bauhaus emphasized the unity of…','Art, craft, and industry','Religion and art','Myth and symbol','Realism and nature','A','Form follows function.',NULL),(113,4,'Which painter pioneered abstract drip techniques?','Jackson Pollock','Mark Rothko','Willem de Kooning','Franz Kline','A','Action painting.',NULL),(114,4,'In subtractive mixing (paints), complementary of blue is…','Orange','Yellow','Red','Green','B','Opposite on traditional artist wheel.',NULL),(115,4,'Which technique uses small dots of color to form images?','Sfumato','Pointillism','Fresco','Encaustic','B','Seurat and Signac.',NULL),(116,4,'The Golden Ratio (≈1.618) is associated with…','Randomness','Static balance','Harmonic proportions','Only color theory','C','Spirals and pleasing rectangles.','images/goldenRatio.jpg'),(117,4,'Which Baroque painter is known for intense chiaroscuro?','Titian','Caravaggio','Botticelli','Goya','B','Dramatic tenebrism.',NULL),(118,4,'Color harmony using three evenly spaced hues is called…','Analogous','Complementary','Triadic','Split-complementary','C','Triangle on the wheel.','images/arts/professional/q8.jpg'),(119,4,'Which medium uses pigments mixed with hot wax?','Tempera','Encaustic','Gouache','Acrylic','B','Fayum mummy portraits.',NULL),(120,4,'Which painting technique creates smooth gradations without hard edges?','Sfumato','Impasto','Dry brush','Scumbling','A','Used by Leonardo.',NULL),(121,5,'What is 7 + 5?','10','11','12','13','C','Count on from 7.',NULL),(122,5,'What is 9 − 4?','3','4','5','6','C','Think: 4 + ? = 9.',NULL),(123,5,'Solve: 3 × 6 = ?','12','15','18','21','C','3 groups of 6.',NULL),(124,5,'What is 24 ÷ 3?','6','7','8','9','C','How many 3s in 24?',NULL),(125,5,'Which fraction is equal to 1/2?','2/4','2/3','3/5','4/6','A','Multiply top & bottom by 2.',NULL),(126,5,'Solve for x: x + 8 = 13','3','4','5','6','C','Subtract 8 from both sides.',NULL),(127,5,'Area of a rectangle with width 5 and height 4?','9','18','20','40','C','Multiply sides.',NULL),(128,5,'Perimeter of a square with side 7?','14','21','28','49','C','Add all four equal sides.',NULL),(129,5,'The average of 6 and 10 is…','7','8','9','16','B','(6 + 10) ÷ 2.',NULL),(130,5,'Which number is a multiple of 9?','14','18','24','28','B','9 × 2.',NULL),(131,5,'Solve for x: 3x − 5 = 16','5','6','7','8','B','Add 5, then divide by 3.',NULL),(132,5,'What is 25% of 60?','12','15','18','20','B','Quarter of 60.',NULL),(133,5,'Slope of the line through (2,3) and (6,11)?','2','3','4','8','A','(11−3)/(6−2) ',NULL),(134,5,'Pythagorean theorem: If a=6, b=8, c=?','9','10','12','14','B','c²=36+64.',NULL),(135,5,'Which number is prime?','21','29','39','51','B','Only divisible by 1 and itself.',NULL),(136,5,'LCM of 6 and 8 is…','12','16','18','24','D','Multiples: 6→12,18,24; 8→16,24.',NULL),(137,5,'Simplify: 2(3x − 4) + 5','6x − 3','6x − 8 + 5','6x − 8 + 10','6x − 3x + 5','C','2×3x=6x; 2×(−4)=−8.',NULL),(138,5,'Probability of rolling an even number on a fair die?','1/6','1/3','1/2','2/3','C','Even: 2,4,6 (3 of 6).',NULL),(139,5,'Evaluate: 2³ × 2²','2⁵','2⁶','16','32','D','Same base: add exponents → 2⁵ = 32.',NULL),(140,5,'Factor: x² − 9','(x − 9)(x + 1)','(x − 3)(x − 3)','(x − 3)(x + 3)','(x + 9)(x − 1)','C','a² − b² = (a − b)(a + b).',NULL),(141,5,'Solve the system: { x + y = 10, x − y = 2 }','(6,4)','(7,3)','(8,2)','(9,1)','A','Add equations to eliminate y.',NULL),(142,5,'Discriminant of x² − 6x + 5 = 0 is…','16','4','6','1','A','b² − 4ac = 36 − 20.',NULL),(143,5,'Solve for x: 3^x = 27','2','3','4','5','B','27 = 3³.',NULL),(144,5,'If sin θ = 3/5 with θ in QI, cos θ = ?','4/5','3/4','5/3','√(1−(3/5)²)','A','3–4–5 triangle; QI ⇒ positive.','images/math/professional/q4.jpg'),(145,5,'Geometric series sum: a=2, r=1/2, n=4 terms','3.5','3','2.5','4','A','2(1−1/16)/(1−1/2).',NULL),(146,5,'Determinant of [[2, 1],[−3, 4]]','11','10','8','5','A','ad − bc = 8 − (−3) = 11.',NULL),(147,5,'Solve for x: ln(x) = 2','x = e²','x = 2e','x = 2','x = e','A','Inverse of ln is e^x.',NULL),(148,5,'Derivative d/dx of f(x)=x³ is…','x²','2x','3x²','3x','C','Power rule.',NULL),(149,5,'Inequality solution: 2x − 7 > 5','x > 1','x > 4','x > 5','x > 6','B','Add 7, then divide by 2.',NULL),(150,5,'Term a₅ of arithmetic sequence a₁=4, d=3','13','15','16','19','D','4 + 4×3.',NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_gifts`
--

DROP TABLE IF EXISTS `user_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gifts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `giftname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gifts`
--

LOCK TABLES `user_gifts` WRITE;
/*!40000 ALTER TABLE `user_gifts` DISABLE KEYS */;
INSERT INTO `user_gifts` VALUES (1,2,'Rose','2025-11-22 17:45:03'),(2,2,'Book of Wisdom','2025-11-22 17:45:21'),(3,2,'Rose','2025-11-22 18:33:37'),(4,3,'Meteor Wish','2025-11-22 23:16:11'),(5,3,'Strawberry Picnic','2025-11-23 00:36:45'),(6,2,'Strawberry Picnic','2025-11-23 21:06:21'),(7,2,'Meteor Wish','2025-11-23 21:06:36'),(8,2,'Meteor Wish','2025-11-23 21:06:55'),(9,2,'Meteor Wish','2025-11-23 21:06:58'),(10,2,'Meteor Wish','2025-11-26 12:44:41'),(11,2,'Handwritten Poem','2025-11-26 12:46:03'),(12,1,'Mystery Chest','2025-11-26 13:57:31'),(13,1,'Rose','2025-11-26 13:59:24'),(14,2,'Meteor Wish','2025-11-28 18:39:40'),(15,2,'Box of Chocolates','2025-11-28 19:16:21'),(16,2,'Meteor Wish','2025-11-28 19:16:23'),(17,5,'Strawberry Picnic','2025-11-28 19:19:55');
/*!40000 ALTER TABLE `user_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_totals`
--

DROP TABLE IF EXISTS `user_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_totals` (
  `user_id` int NOT NULL,
  `total_xp` int NOT NULL DEFAULT '0',
  `total_completed` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_totals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_totals`
--

LOCK TABLES `user_totals` WRITE;
/*!40000 ALTER TABLE `user_totals` DISABLE KEYS */;
INSERT INTO `user_totals` VALUES (1,285,31),(2,505,76),(3,160,24),(5,25,9);
/*!40000 ALTER TABLE `user_totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'assilhalawi1@gmail.com','$2b$10$V7byc.nwEB1NIms3kkIMOOvmT2/7g84rMmCeAsziImiSkWd9DRnhG','2025-11-22 14:32:18'),(2,'assilhalawi672@hotmail.com','$2b$10$5LVoSxNzUWRXjJw6HMuceemo420plEa.a4dTJG9cpx83L2zWjNgcW','2025-11-22 17:13:06'),(3,'abdallah@hotmail.com','$2b$10$OG7MYUx.yC7zlpcMPHoK2uR.BJDbdOL3abGDPcZodCF9TIa7wJikG','2025-11-22 23:03:06'),(5,'user@gmail.com','$2b$10$tpq/nlepu1frD99On4gt9ez2SDbJuJiOM34ADNDFDm43fjKowc9hG','2025-11-28 19:18:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-12 13:08:00
