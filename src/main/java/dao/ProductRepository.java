package dao;
import java.util.ArrayList;
import dto.Product;
public class ProductRepository {
	private ArrayList<Product>listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
	Product phone = new Product("p1234", "iPhone6s", 800000);
	phone.setDescription("4.7-inch, 1334X750 Renina HD Display, 8-megapixel iSight Camera");
	phone.setCategory("Smart Phone");
	phone.setManufacturer("Apple");
	phone.setUnitsInStock(1000);
	phone.setCondition("New");
	phone.setFilename("P1234.png");
	
	Product notebook = new Product("p1235", "LG PC 그램", 1500000);
	notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core Processors");
	notebook.setCategory("Notebook");
	notebook.setManufacturer("LG");
	notebook.setUnitsInStock(1000);
	notebook.setCondition("Refurbished");
	notebook.setFilename("p1235.png");
			
	Product tablet = new Product("p1236", "Galaxy Tab 5", 900000);
	tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, OctaCore Processor");
	tablet.setCategory("Tablet");
	tablet.setManufacturer("Samsung");
	tablet.setUnitsInStock(1000);
	tablet.setCondition("Old");
	tablet.setFilename("P1236.png");
	
	listOfProducts.add(phone);
	listOfProducts.add(notebook);
	listOfProducts.add(tablet);
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i< listOfProducts.size(); i++){
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}

